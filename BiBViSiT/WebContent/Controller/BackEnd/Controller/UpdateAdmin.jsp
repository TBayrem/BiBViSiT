<%@page import="Model.Admin"%>
<%
	if (request.getParameter("Att").equals("Admin")) {
	String A = request.getParameter("A");
	if (A.equals("Y"))
		A = "N";
	else
		A = "Y";
	Admin.updateAdmin(request.getParameter("Email"), A);
} else if (request.getParameter("Att").equals("Activ")) {
	String A = request.getParameter("A");
	if (A.equals("Y"))
		A = "N";
	else
		A = "Y";
	Admin.updateActive(request.getParameter("Email"), A);
}
response.sendRedirect("../View/Admins.jsp");
%>