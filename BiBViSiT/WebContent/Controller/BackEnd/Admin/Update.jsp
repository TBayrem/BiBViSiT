<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="admin" class="Model.Admin" scope="session" />
    
<%



if(request.getParameter("Att").equals("Admin")){
	String A =request.getParameter("A");
	if (A.equals("Y")) A = "N"; else A = "Y"; 
	admin.updateAdmin(request.getParameter("Email"), A);
}
else if(request.getParameter("Att").equals("Active")){
	String A =request.getParameter("A");
	if (A.equals("Y")) A = "N"; else A = "Y"; 
	admin.updateActive(request.getParameter("Email"), A);
}
response.sendRedirect("../../../View/Bodys/BackEnd/Main/Admins.jsp");

%>