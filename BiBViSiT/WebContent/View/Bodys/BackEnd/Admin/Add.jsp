<jsp:include page="../../../Headers/BackEnd/Header.jsp" />


</head>
<body>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Admin/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="username"  placeholder="Username eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Supervisor Admin einfügen</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Admin/Search.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="username"  placeholder="username eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Admin Suchen</button>
    </form>
  </div>
	<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>