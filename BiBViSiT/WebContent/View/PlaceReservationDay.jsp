
<jsp:include page="./Header.jsp" />

<%@page import="java.sql.Date"%>
<%@page import="Model.Place"%>
<%@page import="Model.Reservation"%>
<%@page import="java.util.Vector"%>

	<%!public Date denullidate(String d) {
		if (d == null)
			return Date.valueOf(java.time.LocalDate.now());
		else
			return Date.valueOf(d);
	}%>
	<%
		Date day = this.denullidate(request.getParameter("day"));

	Vector<Place> vectorofplaces = Place.getAll();
	Vector<Integer> Vectorofalldayplaces = Reservation.getAlldayplaces(day);
	int notavailable = 0;
	for (Place P : vectorofplaces) {
		if ((Vectorofalldayplaces.contains(P.getNum()))||(P.getAvailable()==0)) {
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

<jsp:include page="./Reservation.jsp" />
<jsp:include page="./Footer.jsp" />
