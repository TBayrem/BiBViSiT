<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="admin" class="Model.Admin" scope="session" />
    
<%

admin.DeleteAdmin( request.getParameter("Email"));

response.sendRedirect("../../../View/Bodys/BackEnd/Main/Admins.jsp");





%>