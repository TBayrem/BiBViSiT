package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.text.ParseException;
import java.util.Vector;
import DataBase.PostgreSQLAccess;

public class Reservation {
	


	private int ID;
	private int Place;
	private int  Visitor;
	private Date day; 
	private int Expired ;
	
	
	
public Reservation() {
	
	}

	
public Reservation(int iD, int place, int visitor, Date day, int expired) {
		
		this.ID = iD;
		this.Place = place;
		this.Visitor = visitor;
		this.day = day;
		this.Expired = expired;
	}


	
public  Reservation getReservation(int ID) throws SQLException {

	String sql = "select * from Place where ID = ?";
	Connection dbConn = new PostgreSQLAccess().getConnection();
	PreparedStatement prep = dbConn.prepareStatement(sql);
	prep.setInt(1, ID);
	ResultSet dbRes = prep.executeQuery();
	return  new Reservation(dbRes.getInt("ID"), dbRes.getInt("place"), dbRes.getInt("visitor"),
			dbRes.getDate("Day"),dbRes.getInt("expired"));
	
}

	

//public Place getPlace(int num) throws SQLException {
//
//	String sql = "select * from Place where num = ?";
//	Connection dbConn = new PostgreSQLAccess().getConnection();
//	PreparedStatement prep = dbConn.prepareStatement(sql);
//	prep.setInt(1, num);
//	ResultSet dbRes = prep.executeQuery();
//	if (dbRes.next()) {
//		return new Place(dbRes.getInt("ID"), dbRes.getInt("Num"), dbRes.getInt("Available"));
//	}
//	else return null;
//	
//	
//}

public boolean DeleteReservation(int ID) throws SQLException {

	String sql = "delete from reservation where ID = ?";
	Connection dbConn = new PostgreSQLAccess().getConnection();
	PreparedStatement prep = dbConn.prepareStatement(sql);

	
	prep.setInt(1, ID);
	int result = prep.executeUpdate();
	if (result != 0)
		return true;
	else
		return false;
}
	
	
	public boolean DeleteexpiredReservation() throws SQLException {

		String sql = "delete from reservation where expired = 1";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	
	public boolean renewalreservation(int ID) throws SQLException {

		String sql = "update reservation set expired = 0 where ID = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		
		prep.setInt(1, ID);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	

	
	public boolean InsertReservation(int Num, int Imma, Date day  ) throws SQLException, ParseException {

		String sql = "insert into reservation (place, visitor, R_start, R_end) values (?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);


		prep.setInt(1, Num);
		prep.setInt(2, Imma);
		prep.setDate(3, day);
		int result = prep.executeUpdate();

		if (result != 0)
			return true;
		else
			return false;
	}
	
	public Vector<Reservation> getAll() throws SQLException {

		Vector<Reservation> Vectorofreservation = new Vector<Reservation>();
		String sql = "select * from Reservation ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Reservation R = new Reservation(dbRes.getInt("ID"), dbRes.getInt("place"), dbRes.getInt("visitor"),
											dbRes.getDate("Day"),dbRes.getInt("expired"));
			
			Vectorofreservation.add(R);
		}
		return Vectorofreservation;
	}

		

	
	public Vector<Reservation> getAllexpiredreservations() throws SQLException {

		Vector<Reservation> Vectorofreservation = new Vector<Reservation>();
		String sql = "select * from Reservation "
				+ "where expired = 1 ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Reservation R = new Reservation(dbRes.getInt("ID"), dbRes.getInt("place"), dbRes.getInt("visitor"),
					dbRes.getDate("Day"),dbRes.getInt("expired"));
			Vectorofreservation.add(R);
		}
		return Vectorofreservation;
	}



	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getPlace() {
		return Place;
	}

	public void setPlace(int place) {
		Place = place;
	}

	public int getVisitor() {
		return Visitor;
	}

	public void setVisitor(int visitor) {
		Visitor = visitor;
	}


	public Date getDay() {
		return day;
	}


	public void setDay(Date day) {
		this.day = day;
	}

	public int getExpired() {
		return Expired;
	}

	public void setExpired(int expired) {
		Expired = expired;
	}
	
	
	
	
}