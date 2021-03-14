<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />

	<%@page import="Model.Messages"%>
	<%@page import="java.util.Vector"%>


	<%
	try {
		if (session.equals(null) || (session.getAttribute("Account").equals(0))) {
	response.sendRedirect("../View/Error.jsp");
	
		} else if (session.getAttribute("Account").equals(1)) {
		

		Vector<Messages> vectorContact = Messages.getAll();
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

					for (Messages C : vectorContact) {
					%>

					<tr id="<%out.print(i + "tr");%>">
						<td><%=C.getID()%></td>
						<td id="<%=i%>"><%=C.getEmail()%></td>
						<td><%=C.getMSG()%></td>
						<td><a
							href="../Controller/DeleteMessages.jsp?ID=<%=C.getID()%>">Delete</a></td>
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

<%		}
		} catch (Exception e) {
			response.sendRedirect("../View/Error.jsp");
		
		}
	 %>
