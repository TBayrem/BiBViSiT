package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Visitor {

	private int ID;// Serial back to createtables//
	private int Imma;
	private String Psydo;
	private String Fach;

	public Visitor() {

	}

	public Visitor( int ID ,String Psydo, String Fach) {
		
		this.Psydo = Psydo;
		this.Fach = Fach;
	}

	
	public  Visitor getVisitor(String Psydo) throws SQLException {

		String sql = "select * from Place where Psydo = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, Psydo);
		ResultSet dbRes = prep.executeQuery();
		return  new Visitor(dbRes.getInt("ID"), dbRes.getString("Psydo"), dbRes.getString("Fach"));
		

	}
	public boolean SearchVisitor(int Imma) throws SQLException {
		
		

		String sql = "select * from Visitor where Imma = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setInt(1, Imma);
		ResultSet dbRes = prep.executeQuery();
		return  dbRes.next();

	}

	public boolean DeleteVisitor(String Psydo) throws SQLException {

		String sql = "delete from Visitor where Psydo = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setString(1, Psydo);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public boolean DeleteAllVisitors() throws SQLException {

		String sql = "delete from Visitor";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;

	}

	public boolean InsertVisitor(int Imma, String Psydo, String Fach) throws SQLException {

	
		String sql = "insert into Visitor (Imma, Psydo, Fach) values (?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setInt(1, Imma);
		prep.setString(2, Psydo);
		prep.setString(3, Fach);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public Vector<Visitor> getAll() throws SQLException {

		Vector<Visitor> Vectorofvisitors = new Vector<Visitor>();
		String sql = "select ID, Psydo, Fach from Visitor ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Visitor V = new Visitor(dbRes.getInt("ID"), dbRes.getString("Psydo"), dbRes.getString("Fach"));
			Vectorofvisitors.add(V);
		}
		return Vectorofvisitors;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getPsydo() {
		return Psydo;
	}

	public void setPsydo(String psydo) {
		Psydo = psydo;
	}

	public String getFach() {
		return Fach;
	}

	public void setFach(String fach) {
		Fach = fach;
	}

}
