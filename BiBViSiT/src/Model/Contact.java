package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBase.PostgreSQLAccess;

public class Contact {

	private int ID;
	private String Email;
	private String MSG;

	public Contact(int iD, String email, String mSG) {

		this.ID = iD;
		this.Email = email;
		this.MSG = mSG;
	}

	public Contact() {

	}

	public static boolean Insert(String Email, String MSG) throws SQLException {

		String sql = "insert into Contact (Email, MSG ) values (?,?)";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, Email);
		prep.setString(1, MSG);
		int result = prep.executeUpdate();
		if (result != 0)
			return true;
		else
			return false;
	}

	public static Vector<Contact> getAll() throws SQLException {

		Vector<Contact> VectorofContacts = new Vector<Contact>();
		String sql = "select * from Contact ";
		Connection dbConn = new PostgreSQLAccess().getConnection();
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()) {
			Contact C = new Contact(dbRes.getInt("ID"), dbRes.getString("Email"), dbRes.getString("MSG"));
			VectorofContacts.add(C);
		}
		return VectorofContacts;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getMSG() {
		return MSG;
	}

	public void setMSG(String mSG) {
		MSG = mSG;
	}

}
