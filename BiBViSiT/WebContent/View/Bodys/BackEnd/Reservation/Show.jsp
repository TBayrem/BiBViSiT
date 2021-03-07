
 <%@page import="Model.Reservation"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
 <% Vector<Reservation> vectorofreservations = reserv.getAll(); int all_Reservations = vectorofreservations.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Reservations</h2>
		<p>Sie haben<code><%=all_Reservations%></code>Reservations</p>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Reservation/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Nummer eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Reservation Addieren</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchInput" class="form-control"  onkeyup="SearchPlace(<%=all_Reservations %>)" placeholder="Platz Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Place</th><th>Visitor</th><th>Day</th><th>Expired</th><th>Delete</th><th>Update</th></tr></thead>
		<tbody>
		<%
		int i = 0;
		
		for (Reservation R : vectorofreservations) {%>
		
	    
		<tr id="<%out.print(i+"tr");%>">
		<td><%= R.getID()%></td><td id="<%= i%>"><%= R.getPlace()%></td><td><%=R.getVisitor()%></td><td><%=R.getDay() %></td><td><%=R.getExpired()%></td>
	    <td><a href="../../../../Controller/BackEnd/Place/Update.jsp?ID=<%=R.getID()%>">Renewal</a></td>
		<td><a href="../../../../Controller/BackEnd/Place/Delete.jsp?ID=<%=R.getID()%>">Delete</a></td>

                                    
                                    </tr>
       
		<%i++;} %>
		</tbody>
		</table>
		</div>
		</div>
