<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<%
if(admin.getActive().equals("Y"))
{
%>
<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
<jsp:include page="../../../Bodys/FrontEnd/Place/Show.jsp" />
<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>	
<% 
}
else{response.sendRedirect("../../../View/Error/404.jsp");}
%>

	