package Model;

public class Visitor {


	private String ID;// Serial back to createtables
	private String Psydo;
	private String String;

	public Visitor() {

	}

	public Visitor(java.lang.String iD, java.lang.String psydo, java.lang.String string) {
		ID = iD;
		Psydo = psydo;
		String = string;
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

	public String getString() {
		return String;
	}

	public void setString(String string) {
		String = string;
	}
}
