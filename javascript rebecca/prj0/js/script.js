//recupero i tag p di html | 3 elementi html
let nomeStudente = document.getElementById("nomeStudente");
let cognomeStudente = document.getElementById("cognomeStudente");
let etaStudente = document.getElementById("etaStudente");
let presenzaStudente = document.getElementById("presenzaStudente");
let avviso = document.getElementById("avviso");
// 3 variabili
// let nomeS = "Rebecca";
let nomeS = prompt("Inserisci il tuo nome");

// let cognomeS = "Orso";
let cognomeS = prompt("Inserisci il tuo cognome");

// let etaS = 29;
let etaS = prompt("Inserisci la tua età");

let presenzaS = prompt("Lo studente è presente? Rispondi con true o false");


// "stampo" il valore delle variabili nei tag recuperati
nomeStudente.textContent = "Nome: " + nomeS;
cognomeStudente.textContent = "Cognome: " + cognomeS;
etaStudente.textContent = "Età: " + etaS;

if(presenzaS == "true"){
    presenzaStudente.setAttribute("class", "txtGreen");
}else{
    presenzaStudente.setAttribute("class", "txtRed");
}

presenzaStudente.textContent = "presente: " + presenzaS;


if(etaS < 18){
   avviso.textContent = "Non puoi iscriverti come studente."
}
// else{
    // nomeStudente.textContent = "Nome: " + nomeS;
    // cognomeStudente.textContent = "Cognome: " + cognomeS;
    // etaStudente.textContent = "Età: " + etaS;
// }



