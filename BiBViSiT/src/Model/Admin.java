package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Admin {

<<<<<<< Updated upstream
    private int Userid; // wir brauchen diese Attribute nicht mehr? den UserId ist automatich angegeben jetzt oder?
=======
  
	private int Userid; 
>>>>>>> Stashed changes
	private String password;
	private String active ;
	private String admin  ;
	private String username;
	private String email;
<<<<<<< Updated upstream
	//boolean isLoggedIn;
=======

	

>>>>>>> Stashed changes

	public Admin() {
	//	this.email = "";
	//	this.password = "";
	//	this.isLoggedIn = false;
	}

	public Admin(int Userid, String password, String active, String admin, String username, String email) {
		this.Userid = Userid;
		this.password = password;
		this.active = active;
		this.admin = admin;
		this.username = username;
		this.email = email;
		
	}
	
<<<<<<< Updated upstream
//	public String getLoginCheckRedirectHtml() {
//		String html = "";
//		if (this.isLoggedIn() == false){
//			html += "<meta http-equiv='refresh' content='0; URL=../../../../Controller/BackEnd/Admin/Home.jsp' >";
//		}
//		return html;
//	}

//	public boolean isLoggedIn() {
//		return isLoggedIn;
//	}
//
//	public void setLoggedIn(boolean isLoggedIn) {
//		this.isLoggedIn = isLoggedIn;
//	}
	
=======
>>>>>>> Stashed changes
	
	public Admin AdminperEmailPassword(String email, String password) throws SQLException {

		String sql = "select * from admin where email = ? and password = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, email);
		prep.setString(2, password);
		ResultSet dbRes = prep.executeQuery();
		if (dbRes.next()) {
			return new Admin(dbRes.getInt("userid"),dbRes.getString("password"),dbRes.getString("active"),dbRes.getString("admin"), dbRes.getString("username"), dbRes.getString("email"));
		}
		else return null;
		
		
	}

	public boolean SearchAdmin(String username) throws SQLException {

		String sql = "select * from admin where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, username);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();

	}
	
	public boolean SearchAdminperEmail(String email, String password) throws SQLException {

		String sql = "select * from admin where email= ? and password = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, email);
		prep.setString(2, password);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
	

	}

	public boolean DeleteAllAdmins() throws SQLException {

		String sql = "delete from admin";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public static boolean DeleteAdmin(String email) throws SQLException {

		String sql = "delete from admin where email = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setString(1, email);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
// 2et Methode : einfach Admin einfügen !!

	public boolean InsertAdmin() throws SQLException {

		String sql = "insert into admin (password, username, email) values (?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.password);
		prep.setString(2, this.username);
		prep.setString(3, this.email);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public static Vector<Admin> getAll() throws SQLException {

		Vector<Admin> Vectoradmin = new Vector<Admin>();
		Vectoradmin.clear(); // ??
		String sql = "select * from admin ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Admin A = new Admin(dbRes.getInt("userid"),
					 			dbRes.getString("password"),
								dbRes.getString("active"),
								dbRes.getString("admin"),
								dbRes.getString("username"),
								dbRes.getString("email"));
			Vectoradmin.add(A);
		}
		return Vectoradmin;
	}
	// ist alles ok Oder sollen wir userid zuerst als string eintragen ? klappt es
	// so ?

	// update admin : if admin = yes dann kan er andere admin loschen zB.

	public static boolean updateAdmin(String email, String admin ) throws SQLException {

		String sql = "update admin Set admin = ? where  email = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, admin);
		prep.setString(2, email);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	public static boolean updateActive(String email, String activ ) throws SQLException {

		String sql = "update admin Set active = ? where  email = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, activ);
		prep.setString(2, email);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
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

	public int getUserid() {
		return Userid;
	}

	public void setUserid(int userid) {
		Userid = userid;
	}
	

	
}
