<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="admin1" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%! public String denullify(String s){if (s == null) return ""; else return s;} %>

<% 
String email  = request.getParameter("email");
String password = request.getParameter("password");
String login    = this.denullify(request.getParameter("login"));
String zurReg   = this.denullify(request.getParameter("zurReg"));





if  (login.equals("Anmelden")){//Anmeldefunktion
	admin1 = admin1.AdminperEmailPassword(email, password);
	admin1.setActive("Y");
	try{	
		
		if (admin1 != null){
			if(admin1.getActive().equalsIgnoreCase("Y"))
			{
			msg.setLoginSuccessful();
			response.sendRedirect("../../../View/Bodys/BackEnd/Main/Home.jsp");
			}else{
			msg.setLoginFailed();
			response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
		}
		}else{
			msg.setLoginFailed();
			response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
		}
	}catch(Exception e){//unerwarteter Fehler
		e.printStackTrace();
		msg.setUnexpectedError();
		response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
	}
	
}else if(zurReg.equals("zurReg")){
	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Registration.jsp");
}else{
	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}




%>
</body>
</html>