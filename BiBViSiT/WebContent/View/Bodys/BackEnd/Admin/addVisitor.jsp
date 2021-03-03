<jsp:include page="../../../Headers/BackEnd/Header.jsp"/>
<body>


<div class="bs-example col-sm-6">	
		<div> 
		
			<input class="Storage form-control" type="text" onkeypress="isInputNumber(event)" placeholder="neuer Kapazität eingeben">
			    <div>
			     Maximale Kpazität: <span class="text"></span>
			    </div>
		    <button class="button btn btn-primary btn-flat">Speichern</button>
		    
		   
			    <div>
			        Free Places: <span class="text-2"></span> <br>
			    </div> 
		       <div class="btn-group">
		            <button class="btn btn-info add">Add</button>
		            <button class="btn btn-info res">Reset</button>
		            <button class="btn btn-info sub">Sub</button>
		      
		       </div>
		</div>	
	</div>
	








		<jsp:include page="../../../Footers/BackEnd/Footer.jsp"/>