
<jsp:include page="./Header.jsp" />


<body>
	<jsp:include page="./FrontEndNavigationbar.jsp" />

	<div class="col-lg-9">
		<iframe id="ShowReservationday" frameBorder="0" height="700px"
			width="100%" src="./PlaceReservationDay.jsp"></iframe>

	</div>
	<div class="col-lg-3">

		<div class="search-row">

			<h3>
				<input type="date" id="day" name="day"
					class="form-control placeholder-no-fix"
					min="<%=java.time.LocalDate.now()%>"
					value="<%=java.time.LocalDate.now()%>"
					onchange="document.getElementById('ShowReservationday').src = './PlaceReservationDay.jsp?day='+this.value">
			</h3>
		</div>
	</div>

	<jsp:include page="./Copyright.jsp" />
	<jsp:include page="./Footer.jsp" />
</body>
</html>
