<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-3 address wow fadeInUp animated" data-wow-duration="2s" data-wow-delay=".1s" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-duration: 2s; animation-delay: 0.1s; animation-name: fadeInUp;">
                     <h1>contact info</h1>
                     <address>
                         <p><i class="fa fa-home pr-10"></i>Address: No.XXXXXX street</p>
                         <p><i class="fa fa-globe pr-10"></i>Mars city, Country</p>
                         <p><i class="fa fa-mobile pr-10"></i>Mobile : (123) 456-7890</p>
                         <p><i class="fa fa-phone pr-10"></i>Phone : (123) 456-7890</p>
                         <p><i class="fa fa-envelope pr-10"></i>Email : <a href="javascript:;">support@example.com</a></p>
                     </address>
                 </div>
                <div class="col-lg-3 col-sm-3 wow fadeInUp animated" data-wow-duration="2s" data-wow-delay=".3s" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-duration: 2s; animation-delay: 0.3s; animation-name: fadeInUp;">
                    <h1>  Free Places </h1>
                     <span id="text" class="FreePlaces"> </span> 
                    
                    
                </div>
                <div class="col-lg-3 col-sm-3">
                <div class="page-footer wow fadeInUp animated" data-wow-duration="2s" data-wow-delay=".5s" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeInUp;">
                    <h1>Our Company</h1>
                    
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3">

                    <div class="text-footer wow fadeInUp animated" data-wow-duration="2s" data-wow-delay=".7s" data-wow-animation-name="fadeInUp" style="visibility: visible; animation-duration: 2s; animation-delay: 0.7s; animation-name: fadeInUp;">
                    <h1>Text Widget</h1>
                        <p>
                            This is a text widget.Lorem ipsum dolor sit amet.
                            This is a text widget.Lorem ipsum dolor sit amet
                        </p>
                    </div>
                </div>

            </div>

        </div>
    </footer>
    
    
    <footer class="footer-small">
        <div class="container">
            <div class="row">
                
                <div class="col-md-4">
                  <div class="copyright">
                    <p>© Copyright - BiBViSiT Team.</p>
                  </div>
                </div>
            </div>
        </div>
    </footer>





<!-- js placed at the end of the document so the pages load faster -->
 <script src="../../../Template/js/jquery.js">
    </script>
    <script src="../../../Template/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="../../../Template/js/hover-dropdown.js">
    </script>
    <script type="text/javascript" src="../../../Template/assets/bxslider/jquery.bxslider.js">
    </script>


    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false">
    </script>

    <!--common script for all pages-->
    <script src="../../../Template/js/common-scripts.js">
    </script><i id="back-to-top" style="display: none;"></i>
    <script src="../../../Template/js/wow.min.js">
    </script>
    <script>
      wow = new WOW(
        {
          boxClass:     'wow',      // default
          animateClass: 'animated', // default
          offset:       0          // default
        }
      )
        wow.init();
    </script>


    <script>
      $(document).ready(function() {
        //Set the carousel options
        $('#quote-carousel').carousel({
          pause: true,
          interval: 4000,
        }
                                     );
      }
                       );

      //google map
      function initialize() {
        var myLatlng = new google.maps.LatLng(51.508742,-0.120850);
        var mapOptions = {
          zoom: 5,
          center: myLatlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Contact'
        }
                                           );
      }
      google.maps.event.addDomListener(window, 'load', initialize);
      
      function SearchPlace(sizeoftable) {
     	 var Placenummer = document.getElementById("SearchInput").value;
     
     	 var tdtext;
   
     	 for (i = 0; i < sizeoftable+1; i++)
     	 {	document.getElementById(i+"tr_inf").hidden = true ;
      		tdtext = document.getElementById(i).innerText;
     		if (tdtext.search(Placenummer)=== -1)
     		{
     			document.getElementById(i+"tr").hidden = true ;	
     		}
     		else 
     		{
     			document.getElementById(i+"tr").hidden = false;     			
     		}
     		}
     	}
      
      

      function liveCheck(){

    	  const freePlaces = document.querySelector('.FreePlaces');
          const storedInput = localStorage.getItem('FP')
          const storedint = +localStorage.getItem('FP')

       // document.getElementById("text-2").innerHTML = storedInput; 
       freePlaces.textContent = storedInput;

          
       
      }
      
      function Providingplacenum(Num){

    	  document.getElementById("add_placenummer").innerText = Num ;
    	  document.getElementById("inputnum").value = Num ;	
    
       
      }
      
   <% int x=2; %>

      function func(){
    	  
    	  
    	  
    	  setInterval(function(){ alert(<%=x%>);
    	  
    	  localStorage.setItem('try',<%=x%>);
    	  var y = <%=x+3%>;
    	  
    	  localStorage.setItem('try1',y);
    	  var z = localStorage.getItem('try1'); }, 300);
      
      }

    </script>
    
    <div aria-hidden="true" aria-labelledby="myModal" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                              <h4 class="modal-title">Platz Nummer  <span id = "add_placenummer"></span> reservieren</h4> 
                             
                          </div>
                          <form action="../../../../Controller/FrontEnd/Reservation/Add.jsp">
                          <div class="modal-body">
                              <p>Bitte Ihre Imma, Psydo sowie Ihre Studiengang eintippen</p>
							  <input type="number" id="Imma" name="Imma" placeholder="Immatrikulationsnummer" class="form-control placeholder-no-fix">
                              <input type="text"  id="Psydo" name="Psydo" placeholder="Psydo" class="form-control placeholder-no-fix">
                              <input type="text"  id="Fach" name="Fach" maxlength="100" placeholder="Studiengang" class="form-control placeholder-no-fix">
                              <input type="text" id ="inputnum" hidden="true" name="Num"  >
                              <label class="input-inline">
                              Reservations Beginn 
                              <input type="datetime-local" name="Start_r"  class="form-control placeholder-no-fix">
                              </label>
 							  <label class="input-inline">
                              Reservations Ende 
                              <input type="datetime-local" name="End_r"  class="form-control placeholder-no-fix">
                              </label>
                          </div>
                          <div class="modal-footer">
                              <button data-dismiss="modal" class="btn btn-default" type="reset">Absagen</button>
                              <button class="btn btn-success" type="submit">Buchen</button>
                          </div>
                            </form>
                      </div>
                  </div>
              </div>
</body>
</html>