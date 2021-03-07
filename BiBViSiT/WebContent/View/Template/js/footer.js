      
   
      wow = new WOW(
        {
          boxClass:     'wow',      // default
          animateClass: 'animated', // default
          offset:       0          // default
        }
      )
        wow.init();
 
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
      
      

      
      function Providingplacenum(Num){

    	  document.getElementById("add_placenummer").innerText = Num ;
    	  document.getElementById("inputnum").value = Num ;	
    
       
      }
      


      function SearchAdmin(sizeoftable) {
      var Username = document.getElementById("SearchAdmin").value;
      	 var tdtext;
       for (i = 0; i < sizeoftable+1; i++)
       
     	 {	
     	 tdtext = document.getElementById(i).innerText;
     	 
      		
      		
     		if (tdtext.search(Username)=== -1)
     		{
     			document.getElementById(i+"tr").hidden = true ;	
     		}
     		else 
     		{
     			document.getElementById(i+"tr").hidden = false;     			
     		}
     		}
     	}

   


      