//var freePlaces = document.querySelector('.FreePlaces');
//var aktuplaces = localStorage.getItem('AFP')
//var aktuplacesInt = +localStorage.getItem('AFP')

window.setInterval("refreshIt()",100);
function refreshIt(){
 var aktuplaces = localStorage.getItem('AFP')
 document.getElementById("texti").innerHTML = aktuplaces; 
 //freePlaces.textContent = aktuplaces;
 //setTimeout(()=> {window.location.reload(true);}, 60000);
    
 
}