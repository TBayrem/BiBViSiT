<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<html>   <meta charset="utf-8">
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


  <style type="text/css">.dropdown-submenu:hover>.dropdown-menu{display:none}</style><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/util.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/map.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/marker.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/controls.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/44/2/onion.js"></script></head>


<body >

<header class="head-section">
      <div class="navbar navbar-default navbar-static-top container">
          <div class="navbar-header">
              <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button"><span class="icon-bar"></span> <span class="icon-bar"></span>
              <span class="icon-bar"></span></button> <a class="navbar-brand" href="../../../Bodys/BackEnd/Main/Home.jsp">
              B<span>i</span>B <span  style="color:red;">|</span> V<span>i</span>S<span>i</span>T</a>
          </div>

          <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">

                  <li>
                      <a href="../../../Bodys/BackEnd/Main/Home.jsp">Home</a>
                  </li>                 
              <li>
                      <a href="../../../Bodys/BackEnd/Main/About.jsp">Über uns</a>
                  </li><li>
                      <a href="../../../Bodys/BackEnd/Main/Contact.jsp">Kontakt</a>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover="dropdown" data-toggle="dropdown" href="#">DatenBank<i class="fa fa-angle-down"></i>
                      </a>

                      <ul class="dropdown-menu">
                          <li>
                              <a href="../../../Bodys/BackEnd/Main/Admins.jsp">Admins</a>
                          </li>
                          <li>
                              <a href="../../../Bodys/BackEnd/Main/Places.jsp">Plätze</a>
                          </li>

                          <li>
                              <a href="../../../Bodys/BackEnd/Main/Visitors.jsp">Besucher</a>
                          </li>

                          <li>
                              <a href="../../../Bodys/BackEnd/Main/Reservations.jsp">Buchungen</a>
                          </li>

                          
                      </ul>
                  </li>  
                  
                    <li>
                      <a href="../../../Bodys/BackEnd/Admin/Logout.jsp">Logout</a>
                  </li>                
                  </ul>
                  
          </div>
      </div>
    </header>
<div class="breadcrumbs">
        <div class="container">
       <div class="row">
       
       
          <div class="col-md-4">
             <ol class="breadcrumb pull-left">
             <h4> Verwaltung der :</h4>
                      <div class="input-group margin">
                        Bibliotheksbesucherkapazität <br>
                        Anzahl der Bibliothesbesucher               
                          
                       </div>
                    </ol>
            </div>
       
            <div class="col-md-4">
             <ol class="breadcrumb pull-left">
             <p><span class="note">maximale Kapazität:</span><span class="ShowCap"></span></p>
                      <div class="input-group margin">
                                        <input class="newCap" type="text" onkeypress="isInputNumber(event)">
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-flat speichern"  type="button">Speichern!</button>
                                        </span>
                                    </div>
                    </ol>
            </div>
            <div class="col-md-4">
             <ol class="breadcrumb pull-right">
                    <p> Verfügbarkeit:<span class="ShowFreePlaces"></span></p>
                        <div class="btn-group">
                                                    <button type="button" class="btn btn-info addVisitor">Add</button>
                                                    <button type="button" class="btn btn-info resVisitor">Res</button>
                                                    <button type="button" class="btn btn-info subVisitor">Sub</button>
                                                </div>
                    </ol>
            </div>
                
            </div>
        </div>
    </div>
  
            