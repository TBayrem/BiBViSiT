<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Place"%>

	<jsp:useBean id="place" class="Model.Place" scope="session" />
<%
String Snum = request.getParameter("Num");
int Num = Integer.parseInt(Snum);
/* place.UpdateAvailability(Num);*/
response.sendRedirect("../../../View/Bodys/FrontEnd/Place/Show.jsp");

%>