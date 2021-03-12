<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../../../Headers/BackEnd/Header.jsp" />
</head>
<body>
<jsp:useBean id="contact" class="Model.Contact" scope="session"/>


<h3>Hier werden alle Unsere Besucher Feedback angezeigt</h3>

<div class="blog-content">

<jsp:getProperty property="allFeedbackAlsHtml" name="contact"/>

</div>

</body>
</html>
<jsp:include page="../../../Footers/BackEnd/Footer.jsp" />