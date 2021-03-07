

<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>

<body>

<jsp:useBean id="admin" class="Model.Admin" scope="session" />
<jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>

  <jsp:getProperty name="msg" property="messageHtml" />

<div class="registration-bg">
        <div class="container">

            <form class="form-signin wow fadeInUp animated" action="../../../../Controller/BackEnd/Admin/Registration.jsp"  method="get">
                <h2 class="form-signin-heading">Jetzt registrieren</h2>
                <div class="login-wrap">
                
                    <input type="text" class="form-control" placeholder="User Name" autofocus="" name="username" >
                    <input type="email" class="form-control" placeholder="Email" autofocus="" name="email" > <br>
                    <input type="password" class="form-control" placeholder="Password" name="password" >
                    <input class="btn btn-lg btn-login btn-block" type="submit" name="registrieren" value="Registrieren">
             </form>  
             <div class="registration">
                        Already Registered ?
                        <a href="../../../../Controller/BackEnd/Admin/Login.jsp?zumLogin=zumLogin">
                            Login
                        </a>
                    </div>
                 </div>

        </div>
     </div>
</body>

<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
