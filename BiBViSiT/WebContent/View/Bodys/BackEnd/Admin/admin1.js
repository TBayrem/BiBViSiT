var StorageInput = document.querySelector('.Storage');
var maxCap       = document.querySelector('.text');
var button       = document.querySelector('.button');
var freePlaces   = document.querySelector('.text-2');
var add = document.querySelector('.add');
var res = document.querySelector('.res');
var sub = document.querySelector('.sub');
var storedInput  = localStorage.getItem('textInput')
var storedint    = + localStorage.getItem('textInput')

function isInputNumber(evt){
var char=String.fromCharCode(evt.which);
if (!(/[0-9]/.test(char))){
    evt.preventDefault();
}
}

if (StorageInput){
    maxCap.textContent = storedInput;
    freePlaces.textContent = storedint;
}

StorageInput.addEventListener('input', letter => {
    maxCap.textContent = letter.target.value;
   
   })

const saveToLocalStorage = () =>{
localStorage.setItem('textInput', maxCap.textContent);
}

button.addEventListener('click', saveToLocalStorage)

add.addEventListener('click', addVisitor )
res.addEventListener('click', reset)
sub.addEventListener('click', removeVisitor)

var i= storedint;
function addVisitor (){
    if (i<=storedint && i>0){
        i-=1;
        freePlaces.textContent =i;
        localStorage.setItem('FP', freePlaces.textContent)
        colours()
    } 
    
}
function removeVisitor (){
    if (i<storedint && i>0){
    i+=1;
    freePlaces.textContent =i;
    localStorage.setItem('FP', freePlaces.textContent)
    colours()
    
    }
    
}
function reset (){
    i=storedint;
    freePlaces.textContent =i;
    localStorage.setItem('FP', freePlaces.textContent)
    colours()
    
}

function colours(){
    if (i<=storedint && i> 15){
        text.style.color ="#33cc33";
    }
    else if (i<=15 && i>5) {
        text.style.color ="#ff6600";
    }
    else if (i<=5 && i>=0) {
        text.style.color ="#990000";   
    }
    else text.style.color ="#333";
    }