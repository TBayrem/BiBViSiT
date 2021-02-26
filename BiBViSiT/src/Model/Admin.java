package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Admin {

    private int Userid; // wir brauchen diese Attribute nicht mehr? den UserId ist automatich angegeben jetzt oder?
	private String password;
	private String active ;
	private String admin  ;
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
	public boolean SearchAdmin(String email, String password) throws SQLException {

		String sql = "select * from admin where username = ? and password = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, email);
		prep.setString(2,  this.password);
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

	public boolean DeleteAdmin(String email) throws SQLException {

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

		String sql = "insert into admin (password, active, admin, username, email) values (?,?,?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.password);
		prep.setString(2, this.active);
		prep.setString(3, this.admin);
		prep.setString(4, this.username);
		prep.setString(5, this.email);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public Vector<Admin> getAll() throws SQLException {

		Vector<Admin> Vectoradmin = new Vector<Admin>();
		Vectoradmin.clear(); // ??
		String sql = "select * from admin ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Admin A = new Admin(dbRes.getString("password"),
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

	public boolean updateAdminSup(String email, String password) throws SQLException {

		String sql = "update admin Set admin = Y where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, email);
		prep.setString(2, password);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	// update active : if active = yes dann ....... zB.
	// diese Methode glaube und das atribute (active) brauchen wir nicht , glaube
	// ich !!
	public boolean updateActive(String email, String password) throws SQLException {

		String sql = "update admin Set active = Y where username = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, email);
		prep.setString(2, password);
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
