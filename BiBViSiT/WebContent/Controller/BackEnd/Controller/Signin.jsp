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
	String registrieren = this.denullify(request.getParameter("registrieren"));
	String zumLogin   = this.denullify(request.getParameter("zumLogin"));
	
 
	if (registrieren.equals("Registrieren")){
	admin.setPassword(password);
	admin.setUsername(username);
	admin.setEmail(email);

	try{	
		boolean adminExist = admin.SearchAdminperEmail(email, password);
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
	response.sendRedirect("../View/Login.jsp");
}else if(zumLogin.equals("zumLogin")){
	msg.setGeneralWelcome();
	response.sendRedirect("../View/Login.jsp");
}else{
	

	msg.setGeneralWelcome();
	response.sendRedirect("../View/Signin.jsp");
}
 
%>


</body>
</html>

