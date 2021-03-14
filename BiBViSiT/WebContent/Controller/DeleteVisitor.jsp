<%@page import="Model.Visitor"%>
<%
	int Imma = Integer.parseInt( request.getParameter("Imma"));
	response.sendRedirect("../View/Visitors.jsp");
%>