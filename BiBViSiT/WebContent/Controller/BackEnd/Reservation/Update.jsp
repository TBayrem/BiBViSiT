<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="reservation" class="Model.Reservation" scope="session" />
<%
	

	
	int ID = Integer.parseInt(request.getParameter("ID"));
	reservation.renewalreservation(ID);


		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
		
%>