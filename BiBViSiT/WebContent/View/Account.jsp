
<li class="dropdown"><a class="dropdown-toggle"
	data-close-others="false" data-delay="0" data-hover="dropdown"
	data-toggle="dropdown" href="#">DatenBank <i
		class="fa fa-angle-down"></i>
</a>

	<ul class="dropdown-menu">

<% if (session.getAttribute("Admin").equals(1)){%>
		<jsp:include page="./Superior.jsp"/>
<%} %>
		<li><a href="./Places.jsp">Plätze</a></li>

		<li><a href="./Visitors.jsp">Besucher</a>
		</li>

		<li><a href="./Reservations.jsp">Buchungen</a>
		</li>
		<li><a href="./Messages.jsp">Messages</a>
		</li>


	</ul></li>
	<li><a href="../Controller/Signout.jsp">Logout</a></li>
	
	
	
	</ul>

		</div>
	</div>
</header>
	<jsp:include page="./BreadCrumbs.jsp" />