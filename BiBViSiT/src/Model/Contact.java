package Model;

import java.util.HashMap;

public class Contact {

	
	String Besucher;
	String Feedback;
	HashMap<String, String> allFeedback; //ist erst mal null
	
	
	
	public Contact() {
	
		this.allFeedback = new HashMap<String, String>();
	}
	
	public void merksDir() {
		this.allFeedback.put(this.Besucher, this.Feedback);
	}

	public void loescheAlles() {
		this.allFeedback.clear();

	}
	
	
	public String  getAllFeedbackAlsHtml(){
		String html = "";

		for(String myName : this.allFeedback.keySet()){
			String myValue = this.allFeedback.get(myName);
			html += " <h4> "+  myName + ": <h4> \n";
			html +=  "<span style='font-size:10pt'>"+ myValue + " </span> \n";
		} 
		return html;

	}

	
	
	
	
	
	
	

	public String getBesucher() {
		return Besucher;
	}

	public void setBesucher(String besucher) {
		Besucher = besucher;
	}

	public String getFeedback() {
		return Feedback;
	}

	public void setFeedback(String feedback) {
		Feedback = feedback;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
