<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
<jsp:useBean id="reservation" class="Model.Reservation" scope="session" />
<%
	String Sdelete = request.getParameter("delete");
	String Snum = request.getParameter("Num");
	String SAvailability = request.getParameter("Availability");
	int delete = Integer.parseInt(Sdelete);
	int Num = Integer.parseInt(Snum);
	int Availability = Integer.parseInt(SAvailability);
	
	if (Availability==0) Availability = 1; else Availability = 0;
	
	if (delete == 1) {
		
		//delete all reservation under that place nummer Cascade problem  
		place.DeletePlace(Num);

		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");

		//update reservation expirecy 
		}
	else {
		place.UpdateAvailability(Num, Availability);
		
		//update reservation expirecy 

		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
		}
%>