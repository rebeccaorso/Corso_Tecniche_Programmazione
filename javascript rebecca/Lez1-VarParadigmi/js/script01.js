// ARRAY
let studenti = [
    "Anna",
    "Gennaro",
    "Luca",
    "Paola",
    "Dario"

]

console.log(studenti);
console.log(studenti[1]);

// //sostituiscono un nome, riasssegno una variabili
// studenti[0]="Luisa";

// //ordinamento
// studenti.sort();
// studenti.reverse();

// //elimino ultimo elemento
// studenti.pop();

// //aggiungo un elemento
// studenti.push("Davide");

// console.log(studenti);

// let numStud = studenti.length

// // recupero il tag ul e stampo i nomi degli sudenti uno alla volta

let listaStud = document.getElementById("listaStud");

//la proprietà innerHTML
// listaStud.innerHTML = "<li>" + studenti[0] + "</li>";
// listaStud.innerHTML += "<li>" + studenti[1] + "</li>";
// listaStud.innerHTML += "<li>" + studenti[2] + "</li>";
// listaStud.innerHTML += "<li>" + studenti[3] + "</li>";
// listaStud.innerHTML += "<li>" + studenti[4] + "</li>";
// listaStud.innerHTML += "<li>" + studenti[5] + "</li>";


// for(let i = 0; i < studenti.length; i++) {
//     listaStud.innerHTML += "<li class='txtBlue'>" + studenti[i] + "</li>";
// }


// let numPartecipanti = document.getElementById("numPartecipanti");
// numPartecipanti.innerHTML = numStud;

let voto = [
    30,
    25,
    17,
    16,
    10
];

for(let i = 0; i < studenti.length; i++) {
    if(voto[i] >=18 ){
        console.log("Ha preso "+ voto);
        listaStud.innerHTML += "<li>" + voti[i] + " " studenti[i] + "</li>";
    }else{         
        console.log("Non superato");
        listaStud.innerHTML += "<li class='txtRed'>" + "Non superato" + "</li>";

    }
}


