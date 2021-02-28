<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
    

    <body>
    <jsp:useBean id="msg" class="Model.Message" scope="session"></jsp:useBean>
    <jsp:useBean id="admin" class="Model.Admin" scope="session"></jsp:useBean>
    
    
    <jsp:getProperty name="messageBean" property="messageHtml" />
   
  <div class="container">

            <form class="form-signin wow fadeInUp" action="../../../Controller/BackEnd/Admin/Add.jsp" style="visibility: visible;">
                <h2 class="form-signin-heading">Register now</h2>
                <div class="login-wrap">
                   
                    <p> Enter account details below</p>
                    <input type="text" class="form-control" name = "userid" placeholder="User Name" value="">
                    <input type="text" class="form-control" name ="email" placeholder="Email" >
                    <input type="password" class="form-control"  name="password" placeholder="Password" value="">
                 <!--   <input type="password" class="form-control" placeholder="Re-type Password">  --> 
                  
                    <input class="btn btn-lg btn-login btn-block" name="register" type="submit" value="registrieren"/>
					<input class="btn btn-lg btn-login btn-block" name="zumLogin" type="submit" value="Anmelden"/>
                   
                
                <!--  
                   
                   <div class="registration">
                    Bereits registriert
                    <a  href="../../../View/Bodys/BackEnd/Admin/Registration.jsp?zumLogin=Anmelden">
                        Anmelden
                    </a>
                </div> 
                 
                --> 			 
                
                </div>
            </form>

        </div>
        
        </body>
  
  	<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
  
  
  
    