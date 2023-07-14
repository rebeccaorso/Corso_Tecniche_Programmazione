let mioNome = "Rebecca";

let corso = 'Javascript';

let annoCorrente = 2023;

let presenza = true;

console.log("Ciao" + mioNome + ". Corso " + corso);

let nomeUser = prompt("Come ti chiami ?");

console.log("ciao utente " + nomeUser);

//recupero la porzione di html
let saluto = document.getElementById("saluto");

//scrivo all'interno di saluto
saluto.textContent = "Benvenuto " + nomeUser;