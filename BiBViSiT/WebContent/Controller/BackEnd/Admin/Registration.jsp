<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
<%! 
public String denullify(String s){
	if (s == null) return "";
	else return s;
}
%>
<% 
	String password = request.getParameter("password");
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String register = this.denullify(request.getParameter("register"));
	String zumLogin = this.denullify(request.getParameter("Anmelden"));

	if (register.equals("Registrieren")){
	
	admin.setPassword(password);
	admin.setUsername(username);
	admin.setEmail(email);
	try{	
		boolean adminExist = admin.SearchAdmin(email, password);
		if (!adminExist){//alles ok)
			admin.InsertAdmin();
			msg.setAdminInserted(username);
		}else{//userid schon belegt
			msg.setAdminAlreadyExists(username);
		}
	}catch(Exception e){//unerwarteter Fehler
		e.printStackTrace();
		msg.setUnexpectedError();
		
	}
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}else if(zumLogin.equals("Anmelden")){

	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}else{

	msg.setGeneralWelcome();
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Login.jsp");
}

%>


</body>
</html>

