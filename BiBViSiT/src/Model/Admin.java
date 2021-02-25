package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;


public class Admin {

//	private int Userid; // wir brauchen diese Attribute nicht mehr? den UserId ist automatich angegeben jetzt oder?
	private String password ;
	private String active;
	private String admin;
	private String username;
	private String email;
	
	public Admin() {
		
	}
	
	public Admin(String password, String active, String admin, String username, String email) {
		this.password = password;
		this.active = active;
		this.admin = admin;
		this.username = username;
		this.email = email;
	}


	// die suche ist mit den username in diesen fall da den id serial ist!
	public boolean SearchAdmin(String username) throws SQLException { 
		
		String sql = "select * from admin where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, username);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
		
	}
	
	// erste methode wir addierem ein admin nach eine Prüfung ! 
	// ich habe alle userid atrribute durch den username ersetzt , kalppt oder arbeiten wir mit ein string userid????
	public boolean InsertAdminIfNotExists()throws DataBase.NoConnectionException, SQLException{
		// true - insert hat geklappt
		// false - Account ex. schon
		// Exception - irgendwas Unvorhergesehenes
		this.prepareAttributesForDB();
		if(this.checkAccountExists()) {
//			System.out.println("Account " + this.userid + " existiert schon");
			return false;
		}else {
			this.insertAccountNoCheck();
//			System.out.println("Account " + this.userid + " wurde angelegt");
			return true;
		}
	}
	
	public void insertAccountNoCheck() throws DataBase.NoConnectionException, SQLException{
		String sql = "insert into admin (password, active, admin, username, email) values (?,?,?,?,?)";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		//prep.setString(1, this.userid);
		prep.setString(1, this.password);
		prep.setString(2, this.active);
		prep.setString(3, this.admin);
		prep.setString(4, this.username);
		prep.setString(5, this.email);
		prep.executeUpdate();
		System.out.println("Admin " + this.username + " wurde erfolgreich angelegt");
	}
	
	public boolean checkAccountExists() throws DataBase.NoConnectionException, SQLException{
		//prüft, ob der Account mit this.userid schon in der Tabelle account existiert
		//return true - existiert schon
		//return false - existiert noch nicht
		String sql = "select * from admin where username = ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1,  this.username);
		ResultSet dbRes = prep.executeQuery();
		// zwei Möglichkeiten:
		// userid ex in Tab -> 1 Datensatz in ResultSet
		// userid ex nicht in Tab -> 0 Datensätze im ResultSet
		boolean gefunden = dbRes.next();
		System.out.println("Admin " + this.username + " existiert: " + gefunden);
		return gefunden;
	}
	public void prepareAttributesForDB(){
		//if (userid.length() > 16) userid = userid.substring(0,16);
		if (password.length() > 32) password = password.substring(0,32);
		if (username.length() > 256) username = username.substring(0,256);
		if (email.length() > 256) email = email.substring(0,256);
		if (active.equalsIgnoreCase("Y")
				|| active.equalsIgnoreCase("YES")
				|| active.equalsIgnoreCase("J")
				|| active.equalsIgnoreCase("JA")) active = "Y";
		else active = "N";
		if (admin.equalsIgnoreCase("Y")
				|| admin.equalsIgnoreCase("YES")
				|| admin.equalsIgnoreCase("J")
				|| admin.equalsIgnoreCase("JA")) admin = "Y";
		else admin = "N";
	}
	
// 2et Methode : einfach Admin einfügen !!
	
	
//	public boolean InsertAdmin(Admin A) throws SQLException {
//		
//		String sql = "insert into admin (password, active, admin, username, email) values (?,?,?,?,?)";
//		Connection dbConn = new PostgreSQLAccess().getConnection();
//		PreparedStatement prep = dbConn.prepareStatement(sql);
//		prep.setString(1, A.password);
//		prep.setInt(2, A.active);
//		prep.setInt(2, A.admin);
//	    prep.setInt(2, A.username);
//	    prep.setInt(2, A.email);
//		int result = prep.executeUpdate();
//		if (result != 0) return true;
//		else return false ;
//	}

	
	
    public Vector<Admin> getAll( ) throws SQLException {
		
    	Vector<Admin> Vectoradmin = new Vector<Admin>();
		String sql = "select * from admin ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Admin A = new Admin(
								dbRes.getString("password"),
								dbRes.getString("active"),
								dbRes.getString("admin"),
								dbRes.getString("username"),
								dbRes.getString("email")
								);
			Vectoradmin.add(A);
		}
		return Vectoradmin ;
	}
     // ist alles ok Oder sollen wir userid zuerst als string eintragen ? klappt es so ? 
    
    // update admin : if admin = yes dann kan er andere admin loschen zB.
    
    public boolean updateAdminSup(String username) throws SQLException {
		
		String sql = "update admin Set admin = Y where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, username);
		int result = prep.executeUpdate();
		if (result != 0 ) return true;
		else return false ;
	}
 // update active : if active = yes dann .......  zB.
    // diese Methode glaube und das atribute (active) brauchen wir nicht , glaube ich !!
 public boolean updateActive(String username) throws SQLException {
		
		String sql = "update admin Set active = Y where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, username);
		int result = prep.executeUpdate();
		if (result != 0 ) return true;
		else return false ;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
