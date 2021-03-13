
<jsp:useBean id="admin" class="Model.Admin" scope="session" />
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
		if (!adminExist){
			
			admin.InsertAdmin();
		}else{
			
		}
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
	response.sendRedirect("../View/Login.jsp");
}else if(zumLogin.equals("zumLogin")){

	response.sendRedirect("../View/Login.jsp");
}else{
	
	response.sendRedirect("../View/Signin.jsp");
}
 
%>


</body>
</html>

