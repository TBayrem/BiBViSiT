<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="reservation" class="Model.Reservation" scope="session" />
<%

	

	int ID = Integer.parseInt(request.getParameter("ID"));
		//delete all reservation under that place nummer Cascade problem  
		reservation.DeleteReservation(ID);

		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");


		
%>