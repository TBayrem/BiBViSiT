<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />

	<%@page import="Model.Contact"%>
	<%@page import="java.util.Vector"%>


	<%
		Vector<Contact> vectorContact = Contact.getAll();
	%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Admins</h2>

		<p>
			Wir Sind :
			<code><%=vectorContact.size()%></code>
			Admins
		</p>




		<div class="bs-example col-sm-6">
			<input type="text" id="SearchAdmin" class="form-control"
				onkeyup="SearchAdmin(<%=vectorContact.size()%>)"
				placeholder="Admin Suchen">

		</div>


		<div class="bs-example">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Email</th>
						<th>MSG</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>

					<%
						int i = 0;

					for (Contact C : vectorContact) {
					%>

					<tr id="<%out.print(i + "tr");%>">
						<td><%=C.getID()%></td>
						<td id="<%=i%>"><%=C.getEmail()%></td>
						<td><%=C.getMSG()%></td>
						<td><a
							href="../Controller/DeleteContact.jsp?ID=<%=C.getID()%>">Delete</a></td>
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


