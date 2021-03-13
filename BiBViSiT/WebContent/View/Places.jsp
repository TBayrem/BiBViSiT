<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />
	
 <%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
 <% Vector<Place> vectorofplaces = Place.getAll(); int all_Places = vectorofplaces.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Plätze</h2>
		<p>Sie haben<code><%=all_Places%></code>Plätze</p>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../Controller/AddPlace.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Nummer eingeben">
        </div>
      <input type="submit" name="Add" class="btn btn-primary btn-flat" Value="Platz Addieren"/>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchInput" class="form-control"  onkeyup="SearchPlace(<%=vectorofplaces.size() %>)" placeholder="Platz Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Nummer</th><th>Verfügbarkeit</th><th>Löschen</th><th>Verfügbarkeit Ändern</th></tr></thead>
		<tbody>
		<%
		int i = 0;
		
		for (Place P : vectorofplaces) {%>
		
	    
		<tr id="<%out.print(i+"tr");%>">
		<td><%= P.getID()%></td><td id="<%= i%>"><%= P.getNum()%></td><td><% if (P.getAvailable()==1) out.print("Free") ;else out.print("Occupied") ;%></td>
	    <td><a href="../Controller/UpdatePlace.jsp?Num=<%=P.getNum()%>&Availability=<%=P.getAvailable()%>">Change Availability</a></td>
		<td><a href="../Controller/DeletePlace.jsp?Num=<%=P.getNum()%>">Delete</a></td>
		
                                    
                                    </tr>
                                    
                                
                  
		<%i++;} %>
		</tbody>
		</table>
		</div>
		</div>
		
		<jsp:include page="./Footer.jsp" />
</body>
</html>
		
