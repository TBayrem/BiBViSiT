<%@page import="Model.Admin"%>

<%
	Admin.DeleteAdmin(request.getParameter("Email"));
	response.sendRedirect("../View/Admins.jsp");
%>