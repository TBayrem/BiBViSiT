<%@page import="Model.Admin"%>
<%@page import="java.util.Vector"%>
<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>


<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>

    <jsp:getProperty name="msg" property="messageHtml" />

 <% Vector<Admin> vectorAdmin = admin.getAll(); int all_Admins = vectorAdmin.size();%>
 <div class="bs-docs-section">
		<h2 id="tables-example">Admins</h2>
		
		<p> Wir Sind : <code><%=all_Admins%></code>Admins</p>
		
		
	
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchAdmin" class="form-control"  onkeyup="SearchAdmin(<%= all_Admins %>)" placeholder="Admin Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>username</th><th>email</th><th>admin</th><th>active</th><th>Delete</th><th>Update</th></tr></thead>
	    <tbody>
	    
		<%
		int i = 0;
		
		for (Admin A : vectorAdmin) {%>
		
		<tr id="<%out.print(i+"tr");%>">
		<td><%=A.getUserid()%></td><td id="<%=i%>"><%= A.getUsername()%></td><td><%= A.getEmail()%></td><td><% if (A.getAdmin().equalsIgnoreCase("Y"))out.print("Is Admin") ;else out.print("is Not Admin") ;%></td><td><% if (A.getActive()=="Y") out.print("active") ;else out.print("desactivated") ;%></td>
		   
		   
		    <td><a href="../../../../Controller/BackEnd/Admin/Delete.jsp?Email=<%=A.getEmail()%>">Delete</a></td>
			<td><a href="../../../../Controller/BackEnd/Admin/Update.jsp?username=<%=A.getUsername()%>">Change Admin Statut</a></td>
		</tr>
		
		<%i++;} %>
		</tbody> 
		</table>
		</div>
		</div>
	
	
		<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
 