package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Place {
	
	private String ID;
	private int Num;
	private int Available;
	
	public Place() {
	
	}

	public Place(String iD, int num, int available) {
		
		this.ID = iD;
		this.Num = num;
		this.Available = available;
	}
	
	public boolean SearchPlace(String ID ) throws SQLException {
		
		String sql = "select * from Place where ID = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, ID);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();

		
	}
	
	public boolean InsertPlace(Place P) throws SQLException {
		
		String sql = "insert into Place (ID, Num, Available) values (?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, P.ID);
		prep.setInt(2, P.Num);
		prep.setInt(2, P.Available);
		int result = prep.executeUpdate();
		if (result != 0) return true;
		else return false ;
	}
	
    public Vector<Place> getAll( ) throws SQLException {
		
    	Vector<Place> V = new Vector<Place>();
		String sql = "select ID, Num, Available from Place ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Place P = new Place(
								dbRes.getString("ID"),
								dbRes.getInt("Num"),
								dbRes.getInt("Available")
								);
			V.add(P);
		}
		return V;
	}
	
     public boolean updateavailability(int Num ) throws SQLException {
		
		String sql = "update Place Set Available = 0 where Num = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setInt(1, Num);
		int result = prep.executeUpdate();
		if (result != 0) return true;
		else return false ;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public int getNum() {
		return Num;
	}

	public void setNum(int num) {
		Num = num;
	}

	public int getAvailable() {
		return Available;
	}

	public void setAvailable(int available) {
		Available = available;
	} 
	
	
}



