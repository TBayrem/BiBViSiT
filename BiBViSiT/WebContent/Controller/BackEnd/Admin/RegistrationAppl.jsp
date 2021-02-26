<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	String register = this.denullify(request.getParameter("register"));
	String zumLogin = this.denullify(request.getParameter("zumLogin"));
	// wenn ein Button eingelesen wird, dann zuallererst null-check!
	//if (register == null) register = "";
	//if (zumLogin == null) zumLogin = "";

	if (register.equals("Registrieren")){
	//Registrierfunktion ausführen
	System.out.println("register geklickt");
	
	admin.setPassword(password);
	admin.setUsername(username);
	admin.setEmail(email);
	try{	
		boolean adminExist = admin.SearchAdmin(email, password);
		if (!adminExist){//alles ok)
			admin.InsertAdmin();
			
		}else{//userid schon belegt
			
		}
	}catch(Exception e){//unerwarteter Fehler
		e.printStackTrace();
		
	}
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/Welcom.jsp");
}else if(zumLogin.equals("zum Login")){
	//zum Login geklickt -> Weiterleitung
	System.out.println("zumLogin geklickt");
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/LoginView.jsp");
}else{
	//Unerwartetes: Könnte ein bösartiger Angriff sein
	System.out.println("nichts ordentliches geklickt");
	
	response.sendRedirect("../../../View/Bodys/BackEnd/Admin/RegView.jsp");
}

%>


</body>
</html>

