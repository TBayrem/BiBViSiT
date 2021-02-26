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
                    <h1>latest tweet</h1>
                    
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
    <script src="../../../Assets/JavaScript/jquery.js"></script>
    <script src="../../../Assets/JavaScript/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../Assets/JavaScript/hover-dropdown.js"></script>
    <script  src="../../../Assets/JavaScript/jquery.flexslider.js"></script>

    <script src="../../../Assets/JavaScript/jquery.easing.min.js"></script>
    <script src="../../../Assets/JavaScript/link-hover.js"></script>


     <!--common script for all pages-->
    <script src="../../../Assets/JavaScript/common-scripts.js"></script><i id="back-to-top" style="display: none;"></i>


    <script src="../../../Assets/JavaScript/wow.min.js"></script>
    <script>
        wow = new WOW(
          {
            boxClass:     'wow',      // default
            animateClass: 'animated', // default
            offset:       0          // default
          }
        )
        wow.init();
     
        function SearchPlace(sizeoftable) {
        	 var Placenummer = document.getElementById("SearchInput").value;
        	 var i;
        	 var tdtext;
        	 var tr;
        	 for (i = 0; i < sizeoftable+1; i++)
        	 {
        		 
        		 tdtext = document.getElementById(i).innerText;
        		if (tdtext.search(Placenummer)=== -1)
        		{
        			document.getElementById(i+"tr").hidden = true ;
        			document.getElementById(i+"tr_inf").hidden = true ;
        			
        		}
        		else 
        		{
        			document.getElementById(i+"tr").hidden = false
        			document.getElementById(i+"tr_inf").hidden = true ;
        			
        		}
        		
        		}
        	}
        
    </script>

</body>
</html>