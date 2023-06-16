//dichiaro la funzione

function saluta(){
    console.log("Ciao Rebecca!");
}

//richiamo la funzione
saluta();

///////////////

function presentati(){
    let nomeUser = "Rebecca";
    console.log("Il mio nome utente è " + nomeUser);
}

// nomeUser è una variabile locale
function salutaTutti(){
    let nomeUser = "Antonio";
    console.log("Ciao a tutti da " + nomeUser);
    console.log(nomeUser);
}
presentati();
salutaTutti();



//////////////////////
let nomeDocente = "Pasquale";

let demo = document.getElementById("demo");

function spedisciInPausa(){
    let studenti = "La classe intera";
    // console.log(studenti + "va in pausa");
    demo.innerHTML = studenti + " va in pausa";
}

function getArea(){
    let altezza = 13;
    let larghezza = 5;

    let area = altezza * larghezza;

    return area;
}
console.log( getArea());
//salvo il valore di restituzione della funzione in una variabile
let area = getArea(); //l'area di prima era locale quindi si può chiamare area un'altra variabile
console.log(area);


function getVolume(){
    let area = getArea();
    
let profondita = 8;

return volume;
}

let volume = getVolume();
console.log("il volume è "+ volume);