<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<%!public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}%>

<%

	String email = this.denullify(request.getParameter("email"));
String password = this.denullify(request.getParameter("password"));
String login = this.denullify(request.getParameter("login"));
String zurReg = this.denullify(request.getParameter("zurReg"));

if (login.equals("Anmelden")) {
	admin = admin.AdminperEmailPassword(email, password);

	try {

		if (admin != null) {
	if (admin.getActive().equalsIgnoreCase("Y")) {
		session.setAttribute("Account", 1);
		session.setAttribute("Admin", 0);
		if (admin.getAdmin().equalsIgnoreCase("Y")) {
			session.setAttribute("Admin", 1);
		}
		
	
		response.sendRedirect("../View/Home.jsp");
	} else {
		session.setAttribute("Account", 0);

		response.sendRedirect("../View/Error.jsp");
	}
		} else {
	session.setAttribute("Accoutn", -1);

	response.sendRedirect("../View/Error.jsp");

		}
	} catch (Exception e) {
		session.setAttribute("Accoutn", -2);

		response.sendRedirect("../View/Error.jsp");
	}

} else if (zurReg.equals("zurReg")) {

	response.sendRedirect("../View/Signin.jsp");
} else {

	response.sendRedirect("../View/Login.jsp");
}
%>
