<jsp:include page="./Header.jsp" />
<body>
	<jsp:include page="./BackEndNavigationbar.jsp" />

	<%@page import="Model.Admin"%>
	<%@page import="java.util.Vector"%>


	<%
		Vector<Admin> vectorAdmin = Admin.getAll();
	%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Admins</h2>

		<p>
			Wir Sind :
			<code><%=vectorAdmin.size()%></code>
			Admins
		</p>




		<div class="bs-example col-sm-6">
			<input type="text" id="SearchAdmin" class="form-control"
				onkeyup="SearchAdmin(<%=vectorAdmin.size()%>)"
				placeholder="Admin Suchen">

		</div>


		<div class="bs-example">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>username</th>
						<th>email</th>
						<th>admin</th>
						<th>active</th>
						<th>Delete</th>
						<th>Update Admin</th>
						<th>Update Activ</th>
					</tr>
				</thead>
				<tbody>

					<%
						int i = 0;

					for (Admin A : vectorAdmin) {
					%>

					<tr id="<%out.print(i + "tr");%>">
						<td><%=A.getUserid()%></td>
						<td id="<%=i%>"><%=A.getUsername()%></td>
						<td><%=A.getEmail()%></td>
						<td>
							<%
								if (A.getAdmin().equalsIgnoreCase("Y"))
								out.print("Is Admin");
							else
								out.print("is Not Admin");
							%>
						</td>
						<td>
							<%
								if (A.getActive().equals("Y"))
								out.print("active");
							else
								out.print("desactivated");
							%>
						</td>


						<td><a
							href="../Controller/DeleteAdmin.jsp?Email=<%=A.getEmail()%>&Att=Delete">Delete</a></td>
						<td><a
							href="../Controller/UpdateAdmin.jsp?Email=<%=A.getEmail()%>&Att=Admin&A=<%=A.getAdmin()%>">
								<%
									if (A.getAdmin().equalsIgnoreCase("Y"))
									out.print("nicht admin machen");
								else
									out.print("admin machen");
								%>
						</a></td>
						<td><a
							href="../Controller/UpdateAdmin.jsp?Email=<%=A.getEmail()%>&Att=Active&A=<%=A.getActive()%>">
								<%
									if (A.getActive().equalsIgnoreCase("Y"))
									out.print("nicht active machen");
								else
									out.print("active machen");
								%>
						</a></td>


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


