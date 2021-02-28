package Model;

public class Message {
	
	String infoMessage;
	String actionMessage;
	
	
	
	public Message() {
		this.setGeneralWelcome();
			
	}
	
	//-----------Methoden----------//
	
	public String getMessageHtml() {
		String html = "";
		html += "<h2 style='text-align: center;'>" + this.getInfoMessage() + "</h2>\n" ;
		html += "<h4 style='text-align: center;'>" + this.getActionMessage() + "</h4>\n" ;
		
		return html;
	}
	
	public void setGeneralWelcome() {
		this.infoMessage = "Willkommen am BiBViSiT-Portal";
		this.actionMessage = "Bitte melden Sie sich an";
	}
	
	//----- Admin registration ------//
	public void setAdminInserted(String username) {
		this.infoMessage = "Der Admin " + username + " wurde angelegt";
		this.actionMessage = "Bitte melden sie sich an!";
	}
	
	public void setAdminAlreadyExists(String username) {
		this.infoMessage = "Dieser Admin" + username + " existiert schon";
		this.actionMessage = "Bitte melden sie sich an!";
	}
	
	//--------- Admin Anmeldung ----------//
	public void setLoginFailed() {
		this.infoMessage = "Ihre Email/Passwort-Kombination ist falsch";
		this.actionMessage = "Bitte versuchen Sie es noch einmal";
	}
	
	public void setLoginSuccessful() {
		this.infoMessage = "Willkommen am BiBViSiT-Portal";
		this.actionMessage = "Bitte waehlen Sie eine Anwendung";
	}
	
	//----- Unexpected Error ------//
	
	public void setUnexpectedError() {
		this.infoMessage = "Es ist ein unerwarteter Fehler aufgetreten";
		this.actionMessage = "Bitte wenden Sie sich an den Administrator";
	}
	//----Getter und Setter---//
	
	public String getInfoMessage() {
		return infoMessage;
	}

	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}

	public String getActionMessage() {
		return actionMessage;
	}

	public void setActionMessage(String actionMessage) {
		this.actionMessage = actionMessage;
	}
	
	/*public Message(String infoMessage, String actionMessage) {
		this.infoMessage = infoMessage;
		this.actionMessage = actionMessage;
	}*/
	
	
	
	

}
