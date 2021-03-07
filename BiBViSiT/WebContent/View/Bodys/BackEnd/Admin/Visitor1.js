var frei = document.querySelector('.frei');
var getzifferString = localStorage.getItem('FP')
var getzifferInt = +localStorage.getItem('FP')


function  GastCheck(){

 freePlaces.textContent = getzifferString ;
 setTimeout(()=> {window.location.reload(true);}, 5000);
}

 