<%@page import="Model.Visitor"%>
<%
	int Imma = Integer.parseInt( request.getParameter("Imma"));
	out.print(Visitor.DeleteVisitor(Imma));
	//response.sendRedirect("../View/Visitors.jsp");
%>