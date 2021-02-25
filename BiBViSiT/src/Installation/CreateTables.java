package Installation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import DataBase.PostgreSQLAccess;

public class CreateTables {
	Connection dbConn;

	public CreateTables() throws SQLException {
		this.dbConn = new PostgreSQLAccess().getConnection();
		createTableOfAdmin();
		createTableOfPlace();
		createTableOfVisitor();
		createTableOfRservation();
		insertFirstAdmin();
		insertFirstPlace();
		insertFirstVisitor();
		insertFirstReservation();
	}
	
	public void createTableOfAdmin() throws SQLException {

		String sql = "create table bw440_632996.admin                ("
				+ "				userid   SERIAL NOT NULL PRIMARY KEY," // Serielle UserId, wie wir bereits kommuniziert haben
				+ "				password CHAR(32) NOT NULL            ,"
				+ "				active   CHAR(1)  NOT NULL DEFAULT 'Y',"
				+ "				admin    CHAR(1)  NOT NULL DEFAULT 'N',"
				+ "				username VARCHAR(256)                 ,"
				+ "				email    VARCHAR(256)                 )";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfPlace() throws SQLException {

		String sql = "create table bw440_632996.place                ("
				+ "				ID  CHAR(16) NOT NULL PRIMARY KEY,"
				+ "				NUM INT NOT NULL UNIQUE            ,"
				+ "				Available   INT  NOT NULL DEFAULT 1)";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfVisitor() throws SQLException {

		String sql = "create table bw440_632996.visitor                ("
				+ "				ID  CHAR(16) NOT NULL PRIMARY KEY,"
				+ "				Psydo CHAR(30) Default 'Anonym',"
				+ "				Fach CHAR(100) Not NULL)";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfRservation() throws SQLException {

		String sql = "create table bw440_632996.reservation                ("
				+ "				ID  CHAR(16) NOT NULL PRIMARY KEY,"
				+ "				place CHAR(16) ,"
				+ "				visitor CHAR(16) ,"
				+ "				R_start TIMESTAMP NOT NULL,"
				+ "				R_end   TIMESTAMP NOT NULL,"
				+ "             FOREIGN KEY (place) REFERENCES place(ID),"
				+ "             FOREIGN KEY (visitor) REFERENCES visitor(ID))";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void insertFirstAdmin() throws SQLException {
		String sql = "insert into bw440_632996.admin " + "(userid, password, active, admin, username, email) "
				+ "values" + "(?,?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setString(1, "00632996");
		prep.setString(2, "S6ny+Va56");
		prep.setString(3, "Y");
		prep.setString(4, "Y");
		prep.setString(5, "BayremTr");
		prep.setString(6, "bayrem.trabelsi@outlook.com");
		prep.executeUpdate();
	}
	
	public void insertFirstPlace() throws SQLException {
		String sql = "insert into bw440_632996.place " + "(ID, NUM, Available) " + "values" + "(?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setString(1, "0000001");
		prep.setInt(2, 1);
		prep.setInt(3, 0);
		prep.executeUpdate();
	}

	public void insertFirstVisitor() throws SQLException {
		String sql = "insert into bw440_632996.visitor " + "(ID, Psydo, Fach) " + "values" + "(?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setString(1, "0000001");
		prep.setString(2, "Bayrem");
		prep.setString(3, "Wirtschaftsinformatik");
		prep.executeUpdate();
	}
	
	@SuppressWarnings("deprecation")
	public void insertFirstReservation() throws SQLException {
		final java.util.Date today = new java.util.Date();
		final java.util.Date someday = new java.util.Date(121,2,15,00,00,00);
   		final java.sql.Timestamp todaySQL = new java.sql.Timestamp(today.getTime());
   		final java.sql.Timestamp somedaySQL = new java.sql.Timestamp(someday.getTime());



		
		String sql = "insert into bw440_632996.reservation " + "(ID, place, visitor, R_start, R_end) " + "values" + "(?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setString(1, "0000001");
		prep.setString(2, "0000001");
		prep.setString(3, "0000001");
		prep.setTimestamp(4, todaySQL);
		prep.setTimestamp(5, somedaySQL);
		prep.executeUpdate();
	}


}
