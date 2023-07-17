let studente = {
    nome: "Dario",
    cognome: "Mennillo",
    matricola: 2008
}

let btn = document.querySelector("#btn");


function caricaStud(){

    //per poter salavare in local o session storage
    //devo trasformare in json
    let studJSON = JSON.stringify(studente);

        localStorage.setItem("studente", studJSON);


}
btn.addEventListener("click", caricaStud);

let btnOut = document.querySelector("#btnOut");

function logOut(){
    localStorage.removeItem("studente");

}

btnOut.addEventListener("click", logOut);
