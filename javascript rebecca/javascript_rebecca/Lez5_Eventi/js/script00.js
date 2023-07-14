let demo = document.querySelector("#demo");

let btnSaluta = document.querySelector("#btnSaluta");

function saluta(){
    demo.innerHTML = "Ciao, Rebecca"
}

//per richiamare la funzione saluta al click sul pulsante non devo usare le ()
btnSaluta.addEventListener("click",saluta);

////////////////////////////////////////////////////////

let btnSalutaStudente = document.querySelector("#btnSalutaStudente");

function SalutaStudente(nomeStudente){
    demo.innerHTML=("Ciao, "+ nomeStudente);
}

btnSalutaStudente.addEventListener("click", function(){
    SalutaStudente("Pippo");
})

///////////////////////////////////////////////

let btnSalutaQualcuno = document.querySelector("#btnSalutaQualcuno");

btnSalutaQualcuno.addEventListener("click",function(){
    let nomeQualcuno = "Nessuno";

    demo.innerHTML ="Ciao, "+ nomeQualcuno;
})

///////////////////////////////////////////////////
//versione 1

// let btnSalutaUser = document.querySelector("#btnSalutaUser");

// function salutaUser(username){
//     demo.innerHTML="Ciao, "+ username;
// }

// btnSalutaUser.addEventListener("click", function(){
//     let username=document.querySelector("#nomeUser").value;
//     salutaUser(username);
// });

//versione 2

// let btnSalutaUser = document.querySelector("#btnSalutaUser");

// btnSalutaUser.addEventListener("click", function(){
   
//     let username=document.querySelector("#nomeUser").value;
   
//     demo.innerHTML="Ciao, "+username;
// });

// versione 3

let btnSalutaUser = document.querySelector("#btnSalutaUser");
let username = document.querySelector("#nomeUser");

function salutaUser(username){
demo.innerHTML= "Ciao, "+ username;
}

btnSalutaUser.addEventListener("click", function(){
    let nomeUser = username.value;
    salutaUser(nomeUser);
})

username.addEventListener("keyup", function(){
    if(event.key == "Enter"){
        let nomeUser = username.value;
        salutaUser(nomeUser);
    }
})












