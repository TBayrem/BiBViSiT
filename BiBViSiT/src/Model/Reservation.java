package Model;

public class Reservation {
	private int ID;
	private int Place;
	private int  Visitor;
	private Date R_startTIMESTAMP ;
	private Date R_endTIMESTAMP;
	
	public Reservation() {

	}

	public Reservation(int iD, int Place,int Visitor,Date R_startTIMESTAMP ,Date R_endTIMESTAMP) {
		this.ID = iD;
		this.Place=place;
		this.Visitor=visitor;
		this.R_startTIMESTAMP=r_startTIMESTAMP;
		this.R_endTIMESTAMP=r_endTIMESTAMP;
	}
	public boolean SearchReservation(int Place) throws SQLException {

		String sql = "select * from Reservation where Place = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setInt(1, num);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();

	}

	public boolean DeleteReservation(int Place) throws SQLException {

		String sql = "delete from Reservation where Place = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setInt(1, Place);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}
	
	public boolean DeleteAllReservations() throws SQLException {

		String sql = "delete from Reservation";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public boolean InsertReservation(Reservation R) throws SQLException {

		String sql = "insert into Reservation(iD,  Place, Visitor, R_startTIMESTAMP , R_endTIMESTAMP) values (?,?,?,?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setInt(2, P.Num);
		prep.setInt(2, P.Available);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public Vector<Reservation> getAll() throws SQLException {

		Vector<Reservation> R = new Vector<Reservation>();
		String sql = "select iD,  Place, Visitor, R_startTIMESTAMP , R_endTIMESTAMP from Reservation ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Reservation r = new Reservation(dbRes.getInt("ID"), dbRes.getInt("Place"), dbRes.getInt("Visitor"),dbRes.getInt("R_startTIMESTAMP"),dbRes.getInt("R_endTIMESTAMP"));
			R.add(r);
		}
		return R;
	}

	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPlace() {
		return Place;
	}

	public void setPlace(String place) {
		Place = place;
	}
	
	public String getVistor() {
		return Visitor;
	}

	public void setVisitor(String visitor) {
		Visitor = visitor;
	}

	public String getR_startTIMESTAMP() {
		return R_startTIMESTAMP;
	}

	public void setR_startTIMESTAMP(String r_startTIMESTAMP) {
		R_startTIMESTAMP = r_startTIMESTAMP;
	}
	public String getR_endTIMESTAMP() {
		return R_endTIMESTAMP;
	}

	public void setR_endTIMESTAMP(String r_endTIMESTAMP) {
		R_endTIMESTAMP = r_endTIMESTAMP;
	}
	
}
	
	

}
