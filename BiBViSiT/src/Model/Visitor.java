package Model;

public class Visitor {


	private String ID;// Serial back to createtables//
	private String Psydo;
	private String fach;
	
	public boolean SearchVisitor(int Psydo) throws SQLException {

		String sql = "select * from Place where Psydo = ?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setInt(1,Psydo );
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();

	}

	public boolean DeleteVisitor(int Psydo) throws SQLException {

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
	
	public boolean DeleteVisitor() throws SQLException {

		String sql = "delete from Visitor where Psyd0=?";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		int result = prep.executeUpdate();
		if (result != 0)
			System.out.println("Visitor succefully deleted");
		else
			System.out.println("try again");
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

	public boolean InsertVisitor(Visitor v) throws SQLException {

		String sql = "insert into Visitor (ID, Psydo, Fach) values (?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);

		prep.setString(2,v.Psydo);
		prep.setString(3, v.Fach);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public Vector<Visitor> getAll() throws SQLException {

		Vector<Visitor> V = new Vector<Visitor>();
		String sql = "select ID, Psyd, Fach from Visitor ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Visitor V = new Visitor(dbRes.getInt("ID"), dbRes.getInt("Psyd"), dbRes.getInt("Fach"));
			V.add(P);
		}
		return V;
	}
	
	public Visitor() {

	}

	public Visitor(String iD, String psydo,String Fach) {
		ID = iD;
		Psydo = psydo;
		Fach=Fach;
	}
	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPsydo() {
		return Psydo;
	}

	public void setPsydo(String psydo) {
		Psydo = psydo;
	}

	
}
