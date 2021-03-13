package Installation;

import java.sql.Connection;
import java.sql.Date;
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
		insertSecondAdmin();
		insertThirdAdmin();
		insertFirstPlace();
		insertFirstVisitor();
		insertFirstReservation();
	}
	
	
	public void createTableOfAdmin() throws SQLException {

		String sql = "DROP TABLE IF EXISTS admin CASCADE;"
				+ "create table admin                ("
				+ "				userid   SERIAL  PRIMARY KEY," // Serielle UserId, wie wir bereits kommuniziert haben
				+ "				password CHAR(32) NOT NULL            ,"
				+ "				active   CHAR(1)  NOT NULL DEFAULT 'N',"
				+ "				admin    CHAR(1)  NOT NULL DEFAULT 'N',"
				+ "				username VARCHAR(256)                 ,"
				+ "				email    VARCHAR(256)                 )";///unique
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	
	 public void createTableOfFeedback() throws SQLException {

		 String sql = "DROP TABLE IF EXISTS feedback CASCADE;"
		 + "create table feedback                ("
		 + " userid   SERIAL  PRIMARY KEY," // Serielle UserId, wie wir bereits kommuniziert haben
		 + " email VARCHAR(256)                 ,"
		 + " bearbeitung   CHAR(1)  NOT NULL DEFAULT 'N',"
		 + " feedback    VARCHAR(750)                 )";///unique
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
				+ "				Day date NOT NULL,"
				+ "				expired INT Default 0,"
				+ "             FOREIGN KEY (place) REFERENCES place(Num) ON DELETE CASCADE,"
				+ "             FOREIGN KEY (visitor) REFERENCES visitor(Imma) ON DELETE CASCADE)";
		Statement stmt = this.dbConn.createStatement();
		stmt.executeUpdate(sql);
	}

	public void insertFirstAdmin() throws SQLException {
		String sql = "insert into admin " + "( password, active, admin, username, email) "
				+ "values" + "(?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
	
		prep.setString(1, "1234");
		prep.setString(2, "Y");
		prep.setString(3, "Y");
		prep.setString(4, "BayremTr");
		prep.setString(5, "bayrem.trabelsi@outlook.com");
		prep.executeUpdate();
	}
	public void insertSecondAdmin() throws SQLException {
		String sql = "insert into admin " + "( password, active, admin, username, email) "
				+ "values" + "(?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
	
		prep.setString(1, "1234");
		prep.setString(2, "Y");
		prep.setString(3, "Y");
		prep.setString(4, "AhmedAyadi");
		prep.setString(5, "Ahmed19ayadi@gmail.com");
		prep.executeUpdate();
	}
	public void insertThirdAdmin() throws SQLException {
		String sql = "insert into admin " + "( password, active, admin, username, email) "
				+ "values" + "(?,?,?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
	
		prep.setString(1, "1234");
		prep.setString(2, "Y");
		prep.setString(3, "Y");
		prep.setString(4, "ShaymaRebhi");
		prep.setString(5, "ShaymaRebhi15@gmail.com");
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
		
		Date day = Date.valueOf("2021-03-09"); 



		
		String sql = "insert into reservation " + "( place, visitor, day) " + "values" + "(?,?,?)";
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		
		prep.setInt(1, 1);
		prep.setInt(2, 632996);
		prep.setDate(3, day);
		prep.executeUpdate();
	}


}
