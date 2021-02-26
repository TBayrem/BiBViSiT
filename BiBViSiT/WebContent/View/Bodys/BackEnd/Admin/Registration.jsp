<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
    

    <body>
   
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
					<input class="btn btn-lg btn-login btn-block" name="zumLogin" type="submit" value="zum Login"/>
                    <div class="registration">
                        
                        
                       
                    </div>
                </div>
            </form>

        </div>
  
  	<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>
  
  
  
    