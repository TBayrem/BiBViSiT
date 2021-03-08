var freePlaces = document.querySelector('.FreePlaces');
var aktuplaces = localStorage.getItem('AFP')
var aktuplacesInt = +localStorage.getItem('AFP')


function myVisitor(){

 document.getElementById("texti").innerHTML = aktuplaces; 
 //freePlaces.textContent = aktuplaces;
 setTimeout(()=> {window.location.reload(true);}, 5000);
    
 
}