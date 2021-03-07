
 <%@page import="Model.Place"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="place" class="Model.Place" scope="session" />
 <% Vector<Place> vectorofplaces = place.getAll(); int all_Places = vectorofplaces.size();%>
	<div class="bs-docs-section">
		<h2 id="tables-example">Plätze</h2>
		<p>Sie haben<code><%=all_Places%></code>Plätze</p>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Place/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Nummer eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Platz Addieren</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
 <input type="text" id="SearchInput" class="form-control"  onkeyup="SearchPlace(<%=vectorofplaces.size() %>)" placeholder="Platz Suchen">
   
  </div>
		
		
		<div class="bs-example">
		<table class="table">
		<thead><tr><th>#</th><th>Nummer</th><th>Verfügbarkeit</th><th>Löschen</th><th>Verfügbarkeit Ändern</th><th>Mehr Info</th></tr></thead>
		<tbody>
		<%
		int i = 0;
		
		for (Place P : vectorofplaces) {%>
		
	    
		<tr id="<%out.print(i+"tr");%>">
		<td><%= P.getID()%></td><td id="<%= i%>"><%= P.getNum()%></td><td><% if (P.getAvailable()==1) out.print("Free") ;else out.print("Occupied") ;%></td>
	    <td><a href="../../../../Controller/BackEnd/Place/Update.jsp?Num=<%=P.getNum()%>&Availability=<%=P.getAvailable()%>">Change Availability</a></td>
		<td><a href="../../../../Controller/BackEnd/Place/Delete.jsp?Num=<%=P.getNum()%>">Delete</a></td>
		<td><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#<%out.print(i+"tr_inf");%>">
                                   mehr info
                                    </a></td>
                                    
                                    </tr>
                                    
                                
                        <tr id="<%out.print(i+"tr_inf");%>" class="panel-collapse collapse" style="height: 0px;">
            <td class="panel-body panel-faq" >Besucher</td>
            <td class="panel-body panel-faq" >Studiengang</td>
            <td class="panel-body panel-faq" >Buchung Beginn</td>
            <td class="panel-body panel-faq" >Buchung schluss</td>
            <td class="panel-body panel-faq"  colspan="2">Bwmwerkung </td>
            </tr> 
		<%i++;} %>
		</tbody>
		</table>
		</div>
		</div>
