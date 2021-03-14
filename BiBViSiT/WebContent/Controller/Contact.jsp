<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="contact" class="Model.Contact" scope="session"/>

<%! public String denullify(String s){if (s == null) return ""; else return s;} %>

<%

String besucher = request.getParameter("besucher");
String feedback = request.getParameter("feedback");
String zurContact   = this.denullify(request.getParameter("zurContact"));

String senden    = this.denullify(request.getParameter("senden"));


if (senden.equals("Senden")){
	contact.setBesucher(besucher);
	contact.setFeedback(feedback);
	contact.merksDir();

	response.sendRedirect("../View/Home.jsp");
}else if(zurContact.equals("zurContact")){
	
	response.sendRedirect("../Feedback.jsp");
}else{
	response.sendRedirect("../View/Home.jsp");
}


%>




</body>
</html>