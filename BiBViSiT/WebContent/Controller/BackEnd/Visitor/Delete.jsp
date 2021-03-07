<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="visitor" class="Model.Visitor" scope="session" />
<%
	
	

	
	int Imma = Integer.parseInt( request.getParameter("Imma"));
	visitor.DeleteVisitor(Imma);
	response.sendRedirect("../../../View/Bodys/BackEnd/Visitor/Show.jsp");
	

		
%>