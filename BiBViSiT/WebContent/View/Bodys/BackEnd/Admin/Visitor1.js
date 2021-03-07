var freePlaces = document.querySelector('.FreePlaces');
var storedInput = localStorage.getItem('FP')
var storedint = +localStorage.getItem('FP')


function  GastCheck(){

 // document.getElementById("text-2").innerHTML = storedInput; 
 freePlaces.textContent = storedInput;
 setTimeout(()=> {window.location.reload(true);}, 5000);
}

 