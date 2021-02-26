<jsp:include page="../../../Headers/BackEnd/Header.jsp" />


</head>
<body>

<div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Place/Add.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Nummer eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Platz Addieren</button>
    </form>
  </div>
  
 <div class="bs-example col-sm-6">
    <form class="form-inline" action="../../../../Controller/BackEnd/Place/Search.jsp">
        <div class="form-group">
        <input type="text" class="form-control" name="Num"  placeholder="Nummer eingeben">
        </div>
      <button type="submit" class="btn btn-primary btn-flat">Platz Suchen</button>
    </form>
  </div>
	<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>