<%@page import="Model.Admin"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />

<%
	Admin.DeleteAdmin(request.getParameter("ID"));
response.sendRedirect("../View/Messages.jsp");
%>