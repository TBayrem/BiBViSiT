package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Reservation {
	

	private int ID;
	private int Place;
	private int  Visitor;
	private Timestamp R_start ;
	private Timestamp R_end;
	private int Expired ;
	
	public Reservation() {
		
	}

	public Reservation(int iD, int place, int visitor, Timestamp r_start, Timestamp r_end, int expired) {
	
		ID = iD;
		Place = place;
		Visitor = visitor;
		R_start = r_start;
		R_end = r_end;
		Expired = expired;
	}


	public Reservation( int place, int visitor, Timestamp r_start, Timestamp r_end) {
	
		this.Place = place;
		this.Visitor = visitor;
		this.R_start = r_start;
		this.R_end = r_end;
	
	}
	

	
//	
//	public boolean SearchReservation(int placenummer, Timestamp Starttimeofreservation, Timestamp Endtimeofreservation ) throws SQLException {
//
//		String sql = "select r.ID, r.place, r.visitor, r.R_start, r.R_end r.expired v.Psydo v.ID v.Fach from reservation as r "
//				+ "join place as p on r.place = p.ID join visitor as v on r.visitor = v.ID "
//				+ "where p.NUM = ? and r.R_start >= ? and r.R_end <= ?";
//		
//		Connection dbConn = new PostgreSQLAccess().getConnection();
//		PreparedStatement prep = dbConn.prepareStatement(sql);
//		prep.setInt(1, placenummer);
//		prep.setTimestamp(2, Starttimeofreservation);
//		prep.setTimestamp(3, Endtimeofreservation);
//
//		ResultSet dbRes = prep.executeQuery();
//		return dbRes.next();
//	}
//	////////////////////////////////////////////////Besser Interpritiert //////////////////////////////////////
	//////////////////////////////////////////////////////Hier unten///////////////////////////////////////
	
	public boolean SearchReservation(Place P ,  Visitor V, Reservation R) throws SQLException {

		String sql = "select r.ID, r.place, r.visitor, r.R_start, r.R_end r.expired v.Psydo v.ID v.Fach from reservation as r "
				+ "join place as p on r.place = p.ID join visitor as v on r.visitor = v.ID "
				+ "where p.NUM = ? and r.R_start >= ? and r.R_end <= ?";		
	Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		
		prep.setInt(1, P.getNum());
		prep.setTimestamp(2, R.R_start);
		prep.setTimestamp(3, R.R_end);


		prep.setInt(1, Place);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
	}
	
	
	public boolean DeleteReservation(int placenummer, Timestamp Starttimeofreservation, Timestamp Endtimeofreservation) throws SQLException {

		String sql = "delete from reservation as r "
				+ "join place as p on r.place = p.ID "
				+ "where p.ID = ? and R_start >= ? and R_end <= ?";
		
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setInt(1, placenummer);
		prep.setTimestamp(2, Starttimeofreservation);
		prep.setTimestamp(3, Endtimeofreservation);
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
	
	public boolean renewalreservation(Reservation R) throws SQLException {

		String sql = "update reservation set expired = 0 where ID = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		
		prep.setInt(1, R.ID);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	
	public boolean Extensionreservation(Reservation R, Timestamp NewR_end) throws SQLException {

		String sql = "update reservation set R_end = ? where ID = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setTimestamp(1, NewR_end);
		prep.setInt(2, R.ID);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	
	public boolean InsertReservation(Reservation R) throws SQLException {

		String sql = "insert into reservation (place, visitor, R_start, R_end) values (?,?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);


		prep.setInt(1, R.Place);
		prep.setInt(2, R.Visitor);
		prep.setTimestamp(3, R.R_start);
		prep.setTimestamp(4, R.R_end);
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
											dbRes.getTimestamp("R_start"),dbRes.getTimestamp("R_end"),dbRes.getInt("expired"));
			
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
											dbRes.getTimestamp("R_start"),dbRes.getTimestamp("R_end"),dbRes.getInt("expired"));
			
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

	public Timestamp getR_start() {
		return R_start;
	}

	public void setR_start(Timestamp r_start) {
		R_start = r_start;
	}

	public Timestamp getR_end() {
		return R_end;
	}

	public void setR_end(Timestamp r_end) {
		R_end = r_end;
	}

	public int getExpired() {
		return Expired;
	}

	public void setExpired(int expired) {
		Expired = expired;
	}
	
	
	
	
}