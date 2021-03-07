<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Place"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
<%
	
	String Snum = request.getParameter("Num");

	
	int Num = Integer.parseInt(Snum);
	Place P = new Place (Num);
	place.InsertPlace(P);

	response.sendRedirect("../../../View/Bodys/BackEnd/Main/Home.jsp");
	

		
%>