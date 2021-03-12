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

String zurLogout   = this.denullify(request.getParameter("zurLogout"));

//if (!admin.isLoggedIn()){
	// msg.setNotLoggedIn();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
	
//}else 
	if(zurLogout.equals("zurLogout")){
	//admin.setLoggedIn(false);
	session.invalidate();
	// msg.setLoggedOff();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}else{
	//Unerwartetes: Könnte ein bösartiger Angriff sein
	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}
%>
</body>
</html>