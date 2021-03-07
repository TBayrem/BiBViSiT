var freePlaces = document.querySelector('.FreePlaces');
var storedInput = localStorage.getItem('FP')
var storedint = +localStorage.getItem('FP')


function  GastCheck(){

 
 freePlaces.textContent = storedInput;
 setTimeout(()=> {window.location.reload(true);}, 5000);
}

 