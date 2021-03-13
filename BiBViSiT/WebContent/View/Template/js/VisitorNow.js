window.setInterval("refreshNumber()",100);
function refreshNumber(){
	var aktfreeplaces = localstorage.getItem('AFP')
	document.getElementById("text-2").innerHTML = "Free Places: "+ aktfreeplaces;
}