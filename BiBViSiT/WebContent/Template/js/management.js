var newCapacity = document.querySelector('.newCap');
var maxCap       = document.querySelector('.ShowCap');
var buttonsave       = document.querySelector('.speichern');
var AktufreePlaces   = document.querySelector('.ShowFreePlaces');
var addbutton = document.querySelector('.addVisitor');
var resbutton = document.querySelector('.resVisitor');
var subbutton = document.querySelector('.subVisitor');
var storedCapacity  = localStorage.getItem('maximalCapacity')
var storedCapacityInt    = + localStorage.getItem('maximalCapacity')

function isInputNumber(evt){
var char=String.fromCharCode(evt.which);
if (!(/[0-9]/.test(char))){
    evt.preventDefault();
}
}

if (newCapacity){
    maxCap.textContent = storedCapacity;
    AktufreePlaces.textContent = storedCapacityInt;
}

newCapacity.addEventListener('input', letter => {
    maxCap.textContent = letter.target.value;
   
   })

var saveToLocalStorage = () =>{
localStorage.setItem('maximalCapacity', maxCap.textContent);
}

buttonsave.addEventListener('click', saveToLocalStorage)

addbutton.addEventListener('click', addVisitor )
resbutton.addEventListener('click', reset)
subbutton.addEventListener('click', removeVisitor)

var i= storedCapacityInt;
function addVisitor (){
    if (i<=storedCapacityInt && i>0){
        i-=1;
        AktufreePlaces.textContent =i;
        localStorage.setItem('AFP', AktufreePlaces.textContent)
    } 
    
}
function removeVisitor (){
    if (i<storedCapacityInt && i>0){
    i+=1;
    AktufreePlaces.textContent =i;
    localStorage.setItem('AFP', AktufreePlaces.textContent)
    }
    
}
function reset (){
    i=storedCapacityInt;
    AktufreePlaces.textContent =i;
    localStorage.setItem('AFP', AktufreePlaces.textContent)  
}

