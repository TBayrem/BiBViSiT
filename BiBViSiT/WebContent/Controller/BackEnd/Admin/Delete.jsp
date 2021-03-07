<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="admin" class="Model.Admin" scope="session" />
    
<%String email    = request.getParameter("email");
if(admin.DeleteAdmin(email)){
out.print("d");}else{out.print("not");}

//response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Show.jsp");



%>