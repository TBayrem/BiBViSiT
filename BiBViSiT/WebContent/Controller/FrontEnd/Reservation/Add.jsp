<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Place"%>
        <%@page import="Model.Reservation"%>
        <%@page import="Model.Visitor"%>
    
<jsp:useBean id="place" class="Model.Place" scope="session" />
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
<jsp:useBean id="visitor" class="Model.Visitor" scope="session" />
<%
	
	String SPsydo = request.getParameter("Psydo");
    String SFach = request.getParameter("Fach");
    String Snum = request.getParameter("Num");
	int Num = Integer.parseInt(Snum);
	final java.util.Date today = new java.util.Date();
	final java.util.Date someday = new java.util.Date(121,2,15,00,00,00);
	final java.sql.Timestamp todaySQL = new java.sql.Timestamp(today.getTime());
	final java.sql.Timestamp somedaySQL = new java.sql.Timestamp(someday.getTime());
	
	visitor.InsertVisitor(SPsydo, SFach);
	Visitor v = visitor.getVisitor(SPsydo);
	
	Place p = place.getPlace(Num);
	
	Reservation R = new Reservation(p.getID(),v.getID(),todaySQL,somedaySQL);
	
	response.sendRedirect("../../../View/Bodys/FrontEnd/Place/Show.jsp");
	

		
%>