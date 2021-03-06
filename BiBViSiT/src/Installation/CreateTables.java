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

		String sql = "DROP TABLE IF EXISTS admin CASCADE;"
				+ "create table admin                ("
				+ "				userid   SERIAL  PRIMARY KEY," // Serielle UserId, wie wir bereits kommuniziert haben
				+ "				password CHAR(32) NOT NULL            ,"
				+ "				active   CHAR(1)  NOT NULL DEFAULT 'Y',"
				+ "				admin    CHAR(1)  NOT NULL DEFAULT 'N',"
				+ "				username VARCHAR(256)                 ,"
				+ "				email    VARCHAR(256)                 )";///unique
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfPlace() throws SQLException {

		String sql = "DROP TABLE IF EXISTS place CASCADE;"
				+ "create table place                ("
				+ "				ID  Serial  PRIMARY KEY,"
				+ "				NUM INT NOT NULL UNIQUE            ,"
				+ "				Available   INT DEFAULT 1)";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfVisitor() throws SQLException {

		String sql = "DROP TABLE IF EXISTS visitor CASCADE;"
				+ "create table visitor                ("
				+ "				ID  Serial PRIMARY KEY,"
				+ "				Imma  INT Not NUll UNIQUE,"
				+ "				Psydo CHAR(30) Default 'Anonym',"
				+ "				Fach CHAR(100) Not NULL)";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void createTableOfRservation() throws SQLException {

		String sql = "DROP TABLE IF EXISTS reservation CASCADE;"
				+ "create table reservation                ("
				+ "				ID  Serial PRIMARY KEY,"
				+ "				place INT ,"
				+ "				visitor INT ,"
				+ "				R_start TIMESTAMP NOT NULL,"
				+ "				R_end   TIMESTAMP NOT NULL,"
				+ "				expired INT Default 0,"
				+ "             FOREIGN KEY (place) REFERENCES place(Num),"
				+ "             FOREIGN KEY (visitor) REFERENCES visitor(Imma))";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void insertFirstAdmin() throws SQLException {
		String sql = "insert into admin " + "( password, active, admin, username, email) "
				+ "values" + "(?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
	
		prep.setString(1, "S6ny+Va56");
		prep.setString(2, "Y");
		prep.setString(3, "Y");
		prep.setString(4, "BayremTr");
		prep.setString(5, "bayrem.trabelsi@outlook.com");
		prep.executeUpdate();
	}
	
	public void insertFirstPlace() throws SQLException {
		String sql = "insert into place " + "( NUM, Available) " + "values" + "(?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		
		prep.setInt(1, 1);
		prep.setInt(2, 0);
		prep.executeUpdate();
	}

	public void insertFirstVisitor() throws SQLException {
		String sql = "insert into visitor " + "(Imma, Psydo, Fach) " + "values" + "(?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setInt(1, 632996);

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



		
		String sql = "insert into reservation " + "( place, visitor, R_start, R_end) " + "values" + "(?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		
		prep.setInt(1, 1);
		prep.setInt(2, 632996);
		prep.setTimestamp(3, todaySQL);
		prep.setTimestamp(4, somedaySQL);
		prep.executeUpdate();
	}


}
