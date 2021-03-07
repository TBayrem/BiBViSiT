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

if (login.equals("Anmelden")){//Anmeldefunktion
	admin.setPassword(password);
	admin.setEmail(email);
	try{	
		boolean adminExist = admin.SearchAdminperEmail(email, password);
		if (adminExist && admin.getAdmin().equals("Y")){
			msg.setLoginSuccessful();
			response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
		}else{
			msg.setLoginFailed();
			response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
		}
	}catch(Exception e){//unerwarteter Fehler
		e.printStackTrace();
		msg.setUnexpectedError();
		response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
	}
}else{
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}




%>
</body>
</html>