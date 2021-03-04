 <jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
    <% Vector<Place> v = place.getAll(); int all_Tisch=v.size();%>
	<div class="container">
		<div class="row">
		<div >
		
			<!--price start-->
			<div class="text-center service-price-one">
				<h1>Bibliothek</h1>
			</div>
			<%
				
			int belegte_Plätze = 0;
			for (Place P : v) {
				if (P.getAvailable() == 0) {
					belegte_Plätze++;
			%>
			<div class="col-lg-2 col-sm-2 mar-two">
				<div class="pricing-table btn btn-danger " style="width: 100%;">
					<div class="pricing-head">
						<h1>
							<%=P.getNum()%>
						</h1>

					</div>
					<ul class="list-unstyled">
						<li>Belegt</li>
						<li>Verlängern</li>
					</ul>
				</div>
			</div>
			<!--price end-->
			<%
				} else {
			%>
			<div class="col-lg-2 col-sm-2 mar-two">
				<div class="pricing-table btn btn-success" style="width: 100%;">
					<div class="pricing-head">
						<h1>
							<%=P.getNum()%>
						</h1>

					</div>
					<ul class="list-unstyled">
						<li>Frei</li>
						<li><a data-toggle="modal" onclick="Providingplacenum(<%=P.getNum() %>)" href="#myModal">Buchen</a>
						</li>
					</ul>
				</div>
			</div>
			<%
				}
			}
			%>
		
		</div>
		</div>
	</div>
	
<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>