
    <jsp:include page="../../../Headers/BackEnd/Header.jsp"/>


<jsp:useBean id="admin" class="Model.Admin" scope="session"></jsp:useBean>
<jsp:getProperty name="admin" property="loginCheckRedirectHtml" />



<jsp:include page="../../../Bodys/FrontEnd/Place/Show.jsp" />

	<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>