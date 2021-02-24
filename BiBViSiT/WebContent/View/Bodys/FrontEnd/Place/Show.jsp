<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
</head>
<body>
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
				
			int belegte_Pl�tze = 0;
			for (Place P : v) {
				if (P.getAvailable() == 0) {
					belegte_Pl�tze++;
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
						<li>Verl�ngern</li>
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
						<li><a href="../../../../Controller/FrontEnd/Place/Show.jsp?Num=<%=P.getNum()%>">Buchen</a>
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
</body>
</html>