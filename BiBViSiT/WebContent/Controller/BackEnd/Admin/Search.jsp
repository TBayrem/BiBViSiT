<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Place"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<%
	
	String username = request.getParameter("username");
	 
	
	admin.SearchAdmin(username);


	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
	

		
%>