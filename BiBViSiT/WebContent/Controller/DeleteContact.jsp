<%@page import="Model.Admin"%>

<%
	Admin.DeleteAdmin(request.getParameter("ID"));
response.sendRedirect("../View/Messages.jsp");
%>