<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />
 <%@page import="Model.Reservation"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
 <% Vector<Reservation> vectorofreservations = reserv.getAll(); int all_Reservations = vectorofreservations.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Reservations</h2>
		<p>Sie haben<code><%=all_Reservations%></code>Reservations</p>
  
 <div class="bs-example col-sm-4">
 <input type="text" id="SearchInputV" class="form-control"  onkeyup="SearchReservationVisitor(<%=all_Reservations %>)" placeholder="Reservation per Besucher Suchen">
   
  </div>
   <div class="bs-example col-sm-4">
 <input type="text" id="SearchInputP" class="form-control"  onkeyup="SearchReservationPlace(<%=all_Reservations %>)" placeholder="Reservation per Platz Suchen">
   
  </div>
   <div class="bs-example col-sm-4">
 <input type="date" id="SearchInputD" class="form-control"  onchange="SearchReservationDate(<%=all_Reservations %>)" >
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Platz</th><th>Besucher</th><th>Datum</th><th>Zustand</th><th>Bestätigen</th><th>Löschen</th></tr></thead>
		<tbody>
		<%
		int i = 0;
		
		for (Reservation R : vectorofreservations) {%>
		
	    
		<tr id="<%out.print(i+"tr");%>">
		<td><%= R.getID()%></td><td id="<%= i+"P"%>"><%= R.getPlace()%></td><td id="<%= i+"V"%>"><%=R.getVisitor()%></td><td id="<%= i+"D"%>"><%=R.getDay() %></td><td><%=R.getExpired()%></td>
	    <td><a href="../Controller/DeleteVisitor.jsp?ID=<%=R.getID()%>">Löschen</a></td>                    
                                    </tr>
       
		<%i++;} %>
		</tbody>
		</table>
		</div>
		</div>
<jsp:include page="./Footer.jsp" />
</body>
</html>

