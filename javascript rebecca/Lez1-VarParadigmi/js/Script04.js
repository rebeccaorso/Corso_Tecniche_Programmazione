let studenti = [
    "Anna Rossi",
    "Paolo Verdi",
    "Luca Bianchi",
    "Maria Gialli",
    "Ciro Neri",
    "Laura Arancio"
]

let voti = [
    30,
    28,
    15,
    14,
    22,
    26
]

// se lo studente supera l'esame mostro il voto altrimenti "non superato"

// 1. Step --> Stampo nomi e voti

let listaStudenti = document.getElementById("listaStud");
let mediaVoti = document.getElementById("mediaVoti");


let somma = 0;
for (let i =0; i < studenti.length; i++) {
    somma+=voti[i];
}
let media = somma / studenti.length;
mediaVoti.innerHTML = "Media Voti esame: " + Math.round ( media);
mediaVoti.innerHTML = "Media Voti esame: " + media;
mediaVoti.innerHTML = "Media Voti esame: " + media.toFixed(2);





// for(let i=0; i < studenti.length; i++) {

//     if(voto[i]< 18) {
//         listaStudenti.innerHTML += "<li>" + studenti[i] + " Esame non superato" + "</li>";
//     }else{
//         listaStudenti.innerHTML += "<li>" + studenti[i] + " " + "</li>";

//     }
    
// }

let votazione;

if(voto[i] <18) {
    votazione = "Esame non superato"
}else{
    votazione = voti[i]
}
listaStudenti.innerHTML += "<li>" + studenti[i] + " " + votazione + "</li>"


listaStudenti.innerHTML += 
`<li> 
${studenti[i]} Esame non superato
</li>`
// ko






