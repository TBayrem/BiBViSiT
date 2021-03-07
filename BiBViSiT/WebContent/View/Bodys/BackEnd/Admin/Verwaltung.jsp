<%@page import="Model.Admin"%>

<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>

<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>

  <jsp:getProperty name="msg" property="messageHtml" />


<div class="col-lg-3">
                <div class="title">
                    <h3>Besucher und Reservation Verwaltung</h3>
                    <hr>
                </div>
                <ul class="list-unstyled pf-list">
                    <li><i class="fa fa-arrow-circle-right pr-10"></i><span><a href="../../../../Controller/BackEnd/Admin/Verwaltung.jsp?zurPersonalMgm=zurPersonalMgm"> Personalmanagement</a></span> </b> </li>
                    <li><i class="fa fa-arrow-circle-right pr-10"></i><span><a href="../../../../Controller/BackEnd/Admin/Verwaltung.jsp?zurPlatzMgm=zurPlatzMgm"> Platzmanagement</a></span> </b> </li>
                    <li><i class="fa fa-arrow-circle-right pr-10"></i><span><a href="../../../../Controller/BackEnd/Admin/Verwaltung.jsp?zurBuchungsMgm=zurBuchungsMgm"> Buchungsmanagement</a></span> </b> </li>
                    <li><i class="fa fa-arrow-circle-right pr-10"></i><span><a href="../../../../Controller/BackEnd/Admin/Verwaltung.jsp?DeleteAdmin=DeleteAdmin"> meine Konto löschen</a></span> </b> </li>
                   <!--  <li><i class="fa fa-arrow-circle-right pr-10"></i><span><a href="#"> Personalmanagement</a></span> </b> </li>  -->
                </ul>
            </div>


















<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>