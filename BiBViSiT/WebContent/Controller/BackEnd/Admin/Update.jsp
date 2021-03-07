<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="admin" class="Model.Admin" scope="session" />
    
<%

String username = request.getParameter("username");

admin.updateAdminSup(username);
out.print("ddd");
//response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");

%>