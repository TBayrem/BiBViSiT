<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />

<% 
	session.setAttribute("Account",0);
	response.sendRedirect("../View/Home.jsp");

%>
