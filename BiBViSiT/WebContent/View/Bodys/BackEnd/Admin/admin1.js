var StorageInput = document.querySelector('.Storage');
var maxCap       = document.querySelector('.maxKap');
var button       = document.querySelector('.speichern');
var visitorsplaces   = document.querySelector('.besucherPlatz');
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
    visitorsplaces.textContent = storedint;
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
        visitorsplaces.textContent =i;
        localStorage.setItem('FP', visitorsplaces.textContent)
        
    } 
    
}
function removeVisitor (){
    if (i<storedint && i>0){
    i+=1;
    visitorsplaces.textContent =i;
    localStorage.setItem('FP', visitorsplaces.textContent)
    
    
    }
    
}
function reset (){
    i=storedint;
    visitorsplaces.textContent =i;
    localStorage.setItem('FP', visitorsplaces.textContent)
    
    
}

