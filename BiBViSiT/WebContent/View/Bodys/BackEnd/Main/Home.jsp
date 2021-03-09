
    

<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
<body>
<jsp:useBean id="admin" class="Model.Admin" scope="session"/>
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
<jsp:getProperty property="loginCheckRedirectHtml" name="admin"/>

<jsp:include page="../../../Bodys/FrontEnd/Place/Show.jsp" />
<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>	

