<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Model.Place"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />

<%!public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}%>
<%
	int Num = Integer.parseInt(request.getParameter("Num"));
String Add = this.denullify(request.getParameter("Add"));

if (Add.equals("Platz Addieren")) {

	try {
		Place P = new Place(Num);

		place.InsertPlace(P);

		response.sendRedirect("../../../View/Bodys/BackEnd/Main/Places.jsp");

	} catch (Exception e) {//unerwarteter Fehler

		response.sendRedirect("../../../View/Bodys/BackEnd/Main/Places.jsp");

	}
} else {

	response.sendRedirect("../../../View/Bodys/BackEnd/Main/Places.jsp");

}
%>