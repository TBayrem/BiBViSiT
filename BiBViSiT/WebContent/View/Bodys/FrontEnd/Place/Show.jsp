
<%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />

<div class="col-lg-9" Style="height:58%; overflow-y: true; ">
<%Vector<Place> vectorofplaces = place.getAll();


int Occupied = 0;
for (Place P : vectorofplaces) {
	if (P.getAvailable() == 0) {
		Occupied++;
%>

<div class="col-lg-2 col-sm-2 mar-two">
	<div class="pricing-table btn btn-danger " style="width: 100%;">
	<ul class="list-unstyled">
			<li><h3>
				<%=P.getNum()%>
			</h3>
</li>
		
		
			<li>Belegt</li>
		</ul>
	</div>
</div>
<!--price end-->
<%
	} else {
%>
<div class="col-lg-2 col-sm-2 mar-two">
	<a data-toggle="modal" onclick="Providingplacenum(<%=P.getNum()%>)"
		href="#myModal" class="pricing-table btn btn-success"
		style="width: 100%;">
	<ul class="list-unstyled">
		<li>	<h3>
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
    
              <input type="date" class="form-control">
            </div>
            <div class="category">
              
              <ul class="list-unstyled">
                
                <li>
                  <a href="javascript:;">
                    <i class="fa fa-angle-right pr-10">
                    </i>
                     <%=vectorofplaces.size() %> Plätze 
                  </a>
                </li>
                <li>
                  <a href="javascript:;">
                    <i class="fa fa-angle-right pr-10">
                    </i>
                  <%=vectorofplaces.size()-Occupied %> Verfügbar
                  </a>
                </li>
                <li>
                  <a href="javascript:;">
                    <i class="fa fa-angle-right pr-10">
                    </i>
                   <%=Occupied %> Belegt
                  </a>
                </li>
                
              </ul>
            </div>

            

            


            <div class="archive">
              <h3>
               Kalendar
              </h3>
              
            </div>


          </div>
        </div>

