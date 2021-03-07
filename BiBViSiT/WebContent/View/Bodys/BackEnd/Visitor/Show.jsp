
 <%@page import="Model.Visitor"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="visitor" class="Model.Visitor" scope="session" />
 <% Vector<Visitor> vectorofvisitors = visitor.getAll(); int all_Visitors = vectorofvisitors.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Visitors</h2>
		<p>Sie haben<code><%=all_Visitors%></code>Plätze</p>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Visitor/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Psydo eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Visitor Addieren</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchInput" class="form-control"  onkeyup="SearchPlace(<%=all_Visitors %>)" placeholder="Visitor Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Psydo</th><th>Studiengang</th><th>Löschen</th><th>Ändern</th></tr></thead>
		<tbody>
		<%
		int i = 0;
		
		for (Visitor V : vectorofvisitors) {%>
		
	    
		<tr id="<%out.print(i+"tr");%>">
		<td><%= V.getID()%></td><td id="<%= i%>"><%= V.getPsydo()%></td><td><%= V.getFach()%></td>
	    <td><a href="../../../../Controller/BackEnd/Visitor/Update.jsp?Num=<%=V.getID()%>">Update</a></td>
		<td><a href="../../../../Controller/BackEnd/Visitor/Delete.jsp?Num=<%=V.getID()%>">Delete</a></td>
		
                                    
                                    </tr>
                                    
                                
      
		<%i++;} %>
		</tbody>
		</table>
		</div>
		</div>
