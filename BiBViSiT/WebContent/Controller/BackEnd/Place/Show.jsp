<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
<%
	String todo = request.getParameter("todo");
	String Snum = request.getParameter("Num");
	String SAvailability = request.getParameter("Availability");
	
	int Num = Integer.parseInt(Snum);
	int Availability = Integer.parseInt(SAvailability);
	
	if (Availability==0) Availability = 1; else Availability = 0;
	
	if (todo.equalsIgnoreCase("delete")) {
		place.DeletePlace(Num);

		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
		}
	else {
		place.UpdateAvailability(Num, Availability);

		response.sendRedirect("../../../View/Bodys/BackEnd/Place/Show.jsp");
		}
%>