<%@page import="Model.Admin"%>
<%@page import="java.util.Vector"%>
<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>


</head>
<body>
<jsp:useBean id="admin" class="Model.Admin" scope="session" />

 <% Vector<Admin> vectorAdmin = admin.getAll(); int all_Admins = vectorAdmin.size();%>
 <div class="bs-docs-section">
		<h2 id="tables-example">Admins</h2>
		
		<p> Wir Sind : <code><%=all_Admins%></code>Admins</p>
		
		
		<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Admin/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="username"  placeholder="username eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Supervisor Admin einfügen</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchInput" class="form-control"  onkeyup="SearchPlace(<%= all_Admins %>)" placeholder="Admin Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>username</th><th>email</th><th>admin</th><th>active</th><th>Delete</th><th>Update</th></tr></thead>
	    <tbody>
		<% for (Admin A : vectorAdmin) {%>
		<tr>
		<td><%= A.getUserid()%></td><td><%= A.getUsername()%></td><td><%= A.getEmail()%></td><td><% if (A.getAdmin()=="Y") out.print("Is Admin") ;else out.print("is Not Admin") ;%></td><td><% if (A.getActive()=="Y") out.print("active") ;else out.print("desactivated") ;%></td>
	   
	   
	    <td><a href="../../../../Controller/BackEnd/Place/Show.jsp?Num=<%=A.getUsername()%>&todo='update'&Admin=<%=A.getAdmin()%>">Delete</a></td>
		<td><a href="../../../../Controller/BackEnd/Place/Show.jsp?Num=<%=A.getUsername()%>&todo='delete'&Admin=<%=A.getAdmin()%>">Change Admin Statut</a></td>
		</tr>
		<%} %>
		</tbody> 
		</table>
		</div>
		</div>
	
	
		<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
 