<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
    <jsp:useBean id="admin" class="Model.Admin" scope="session"></jsp:useBean>
    
  



<html>
<head><style>.gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}
</style><link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans:400,500,700"><style>.gm-ui-hover-effect{opacity:.6}.gm-ui-hover-effect:hover{opacity:1}
</style><style>.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px;box-sizing:border-box}
</style><style>@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style><style>.dismissButton{background-color:#fff;border:1px solid #dadce0;color:#1a73e8;border-radius:4px;font-family:Roboto,sans-serif;font-size:14px;height:36px;cursor:pointer;padding:0 24px}.dismissButton:hover{background-color:rgba(66,133,244,0.04);border:1px solid #d2e3fc}.dismissButton:focus{background-color:rgba(66,133,244,0.12);border:1px solid #d2e3fc;outline:0}.dismissButton:hover:focus{background-color:rgba(66,133,244,0.16);border:1px solid #d2e2fd}.dismissButton:active{background-color:rgba(66,133,244,0.16);border:1px solid #d2e2fd;box-shadow:0 1px 2px 0 rgba(60,64,67,0.3),0 1px 3px 1px rgba(60,64,67,0.15)}.dismissButton:disabled{background-color:#fff;border:1px solid #f1f3f4;color:#3c4043}
</style><style>.gm-style-pbc{transition:opacity ease-in-out;background-color:rgba(0,0,0,0.45);text-align:center}.gm-style-pbt{font-size:22px;color:white;font-family:Roboto,Arial,sans-serif;position:relative;margin:0;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%)}
</style><style>.gm-style img{max-width: none;}.gm-style {font: 400 11px Roboto, Arial, sans-serif; text-decoration: none;}</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="author" content="cosmic">
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business">
    <link rel="shortcut icon" href="../../../Template/img/favicon.png">

    <title>
      BiB|ViSiT
    </title>

    <!-- Bootstrap core CSS -->
    <link href="../../../Template/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Template/css/theme.css" rel="stylesheet">
    <link href="../../../Template/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="../../../Template/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="../../../css/flexslider.css">
    <link href="../../../Template/assets/bxslider/jquery.bxslider.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../../Template/css/animate.css">
    <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">


    <!-- Custom styles for this template -->
    <link href="../../../Template/css/style.css" rel="stylesheet">
    <link href="../../../Template/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
  <style type="text/css">.dropdown-submenu:hover>.dropdown-menu{display:none}</style><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/util.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/map.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/marker.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/controls.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/onion.js"></script></head>


<body>

<header class="head-section">
      <div class="navbar navbar-default navbar-static-top container">
          <div class="navbar-header">
              <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button"><span class="icon-bar"></span> <span class="icon-bar"></span>
              <span class="icon-bar"></span></button> <a class="navbar-brand">
              B<span>i</span>B <span  style="color:red;">|</span> V<span>i</span>S<span>i</span>T</a>
          </div>
          </div>
    

    <jsp:getProperty name="msg" property="messageHtml" />
   
 

        <div class="login-bg">
        <div class="container">
            <div class="form-wrapper">
            <form class="form-signin wow fadeInUp animated" action="../../../../Controller/BackEnd/Admin/Login.jsp" method="get">
            <h2 class="form-signin-heading"></h2>
            <div class="login-wrap">
                <input type="text" class="form-control" placeholder="E-mail" name="email" value="">
                <input type="password" class="form-control" placeholder="Password" name="password" value="">
                
                
             	<input type="submit" class="btn btn-lg btn-login btn-block" name="login" value="Anmelden"/>
                
          </form>
                <div class="registration">
                    Sie sind noch nicht eingetragen?
                    <a  href="../../../../Controller/BackEnd/Admin/Login.jsp?zurReg=zurReg">
                        Admin anlegen
                    </a>
                </div>

            </div>

              
              
              

          </div>
        </div>
  
    
     

    
</body>
</html>
