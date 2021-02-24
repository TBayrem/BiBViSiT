


<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
    
<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
</head>
<body>
<jsp:useBean id="place" class="Model.Place" scope="session" />
    <% Vector<Place> v = place.getAll(); int all_Tisch=v.size();%>
	<div class="bs-docs-section">


		<h1 id="tables" class="page-header">Daten Banken</h1>

		<h2 id="tables-example">Tisch Liste</h2>
		<p>
			diese Liste hat
			<code><%= all_Tisch%></code>
			Tisch
		</p>

		<div class="bs-example">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Num</th>
						<th>Available</th>
						<th>Delete</th>
						<th>Update</th>
					</tr>
				</thead>
				<tbody>
				<% for (Place P : v) {%>
					<tr>
						<td><%= P.getID()%></td>
						<td><%= P.getNum()%></td>
						<td><%= P.getAvailable()%></td>
						<td><a href="./SetPlaceavilability.jsp?Num=<%=P.getNum()%>&todo=delete">Delete</a></td>
						<td><a href="./SetPlaceavilability.jsp?Num=<%=P.getNum()%>&todo=update">Update</a></td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
	</div>

<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
