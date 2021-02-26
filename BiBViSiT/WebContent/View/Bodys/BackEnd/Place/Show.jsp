


<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
    
<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
</head>
<body>
<jsp:useBean id="place" class="Model.Place" scope="session" />
    <% Vector<Place> vectorofplaces = place.getAll(); int all_Places = vectorofplaces.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Places</h2>
		<p>You have<code><%=all_Places%></code>Places</p>
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Num</th><th>Available</th><th>Delete</th><th>Update</th></tr></thead>
		<tbody>
		<% for (Place P : vectorofplaces) {%>
		<tr>
		<td><%= P.getID()%></td><td><%= P.getNum()%></td><td><% if (P.getAvailable()==0) out.print("Free") ;else out.print("Occupied") ;%></td>
	    <td><a href="../../../../Controller/BackEnd/Place/Show.jsp?Num=<%=P.getNum()%>&todo='update'&Availability=<%=P.getAvailable()%>">Change Availability</a></td>
		<td><a href="../../../../Controller/BackEnd/Place/Show.jsp?Num=<%=P.getNum()%>&todo='delete'&Availability=<%=P.getAvailable()%>">Delete</a></td>
		</tr>
		<%} %>
		</tbody>
		</table>
		</div>
		</div>
		<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
