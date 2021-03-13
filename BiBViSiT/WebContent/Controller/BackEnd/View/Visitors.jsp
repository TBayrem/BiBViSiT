<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />
<%@page import="Model.Visitor"%>
<%@page import="java.util.Vector"%>
<%
	Vector<Visitor> vectorofvisitors = Visitor.getAll();
int all_Visitors = vectorofvisitors.size();
%>
<div class="bs-docs-section">
	<h2 id="tables-example">Visitors</h2>
	



	<div class="bs-example col-sm-6">
		<input type="text" id="SearchInput" class="form-control"
			onkeyup="SearchPlace(<%=all_Visitors%>)"
			placeholder="Visitor Suchen">

	</div>
	<div class="bs-example">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>Psydo</th>
					<th>Studiengang</th>
					<th>Löschen</th>
					
				</tr>
			</thead>
			<tbody>
				<%
					int i = 0;
				for (Visitor V : vectorofvisitors) {
				%>
				<tr id="<%out.print(i + "tr");%>">
					<td><%=V.getID()%></td>
					<td><%=V.getImma()%></td>
					<td id="<%=i%>"><%=V.getPsydo()%></td>
					<td><%=V.getFach()%></td>					<td><a
						href="../Controller/DeleteVisitor.jsp?Imma=<%=V.getImma()%>">Delete</a></td>
				</tr>
				<%
					i++;
				}
				%>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="./Footer.jsp" />
</body>
</html>
