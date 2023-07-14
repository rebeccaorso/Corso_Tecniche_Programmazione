//bolean
let presenza = true;

// char equivale una stringa
let genere = "f";

// recupero il tag p id="numStud" per poter scriverci dentro
let numStud = document.getElementById("numStud"); //<p id="numStud"></p>

console.log(numStud);

let partecipanti = prompt("Quanti studenti sono presenti oggi?");

//scrivo dentro numStud. ovvero modifico la proprietà testuale di numStud
numStud.textContent = "Num Studenti: 16";