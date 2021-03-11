<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.Date"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
<div class="col-lg-9">
	<%
		Vector<Place> vectorofplaces = place.getAll();
	Date day = Date.valueOf(java.time.LocalDate.now());

	Vector<Integer> Vectorofalldayplaces = reserv.getAlldayplaces(day);
	int notavailable = 0;
	for (Place P : vectorofplaces) {
		if (Vectorofalldayplaces.contains(P.getNum())) {
			notavailable++;
	%>
	<div class="col-lg-2 col-sm-2 mar-two">
		<div class="pricing-table btn btn-danger " style="width: 100%;">
			<ul class="list-unstyled">
				<li>
					<h3><%=P.getNum()%></h3>
				</li>
				<li>Nicht verfügbar</li>
			</ul>
		</div>
	</div>
	<%
		} else {
	%>
	<div class="col-lg-2 col-sm-2 mar-two">
		<a data-toggle="modal" onclick="Providingplacenum(<%=P.getNum()%>)"
			href="#myModal" class="pricing-table btn btn-success"
			style="width: 100%;">
			<ul class="list-unstyled">
				<li>
					<h3>
						<%=P.getNum()%>
					</h3>
				</li>
				<li>Buchen</li>
			</ul>
		</a>
	</div>
	<%
		}
	}
	%>
</div>
<div class="col-lg-3">
	<div class="blog-side-item">
		<div class="search-row">

			<h3>
				<%=java.time.LocalDate.now()%>
			</h3>
		</div>
		<div class="category">
			<ul class="list-unstyled">

				<li><i class="fa fa-angle-right pr-10"> </i> <%=vectorofplaces.size()%>
					Plätze</li>
				<li><i class="fa fa-angle-right pr-10"> </i> <%=vectorofplaces.size() - notavailable%>
					Verfügbar</li>
				<li><i class="fa fa-angle-right pr-10"> </i> <%=notavailable%>
					Nicht verfügbar</li>
			</ul>
		</div>
		
	</div>
</div>

