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

String zurPersonalMgm   = this.denullify(request.getParameter("zurPersonalMgm"));
String zurPlatzMgm      = this.denullify(request.getParameter("zurPlatzMgm"));
String zurBuchungsMgm   = this.denullify(request.getParameter("zurBuchungsMgm"));
String DeleteAdmin      = this.denullify(request.getParameter("DeleteAdmin"));
	
if(zurPersonalMgm.equals("zurPersonalMgm")){

	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
	
}else if(zurPlatzMgm.equals("zurPlatzMgm")){
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
	
}else if(zurBuchungsMgm .equals("zurBuchungsMgm")){
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
	
}else if(DeleteAdmin.equals("DeleteAdmin")){
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
}




%>
</body>
</html>