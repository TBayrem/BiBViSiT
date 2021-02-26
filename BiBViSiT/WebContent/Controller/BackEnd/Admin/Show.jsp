<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />

<% 
	String todo     = request.getParameter("todo");
	String username = request.getParameter("username");
	String email    = request.getParameter("email");
	String password =request.getParameter("password");
	String isadmin  = request.getParameter("admin");
	

	if (todo.equalsIgnoreCase("delete")) {
		admin.DeleteAdmin(email);

		response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
		}
	else {
		admin.updateAdminSup(email, password);

		response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");
		}
%>
