<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>

<%! public String denullify(String s){if (s == null) return ""; else return s;} %>

<% 
String email  = request.getParameter("email");
String password = request.getParameter("password");
String login    = this.denullify(request.getParameter("login"));
String zurReg   = this.denullify(request.getParameter("zurReg"));

if (login.equals("Anmelden")){//Anmeldefunktion
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/admin1.html");
}else if(zurReg.equals("zurReg")){
	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
}else{
	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
}




%>
</body>
</html>