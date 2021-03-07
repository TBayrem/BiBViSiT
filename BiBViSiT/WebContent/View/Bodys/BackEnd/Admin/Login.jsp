
    

   <body> 
   
    <jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
    <jsp:useBean id="admin" class="Model.Admin" scope="session"></jsp:useBean>
    
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
    </div>
    
     </body>

    
