function Studente(nome, cognome, matricola, corso){

    this.nome = nome;
    this.cognome = cognome;
    this.matricola = matricola;
    this.corso = corso;

    this.info = function(){
        let info = this.nome + " " + this.cognome + "  - Mat: " + this.matricola + " - Corso: " + this.corso;
        return info;
    }
}
function registraStudente(){
    //recupero i value del form
    let nomeStud = document.getElementById("nomeStud").value;
    let cognomeStud = document.getElementById("cognomeStud").value;
    let matricolaStud = document.getElementById("matricolaStud").value;
    let corso = document.getElementById("corso").value;

    if(nomeStud =="" || cognomeStud=="" || matricolaStud=="" || corso == -1){
        demo.innerHTML = "Hai compilato male il form.";
    }else {

        
        //creo lo studente passando come parametri i valori recuperati
        let mioStudente = new Studente(nomeStud, cognomeStud, matricolaStud, corso);
        
        console.log(mioStudente);
        aula.push(mioStudente);
        stampa();
        pulisci(); // o solo formReg.reset();
    }
}

function pulisci(){
//    document.getElementById("nomeStud").value = "";
//    document.getElementById("cognomeStud").value = "";
//    document.getElementById("matricolaStud").value = "";
//    document.getElementById("corso").value = "";

    formReg.reset();
}



let aula = [];

function stampa(){
    demo.innerHTML = "";
    aula.forEach(studente =>{
        demo.innerHTML += "<li>" + studente.info() + "</li>";
    })
}

let btn = document.getElementById("btn");
let demo = document.getElementById("demo");
let formReg = document.getElementById("formReg");

btn.addEventListener("click", registraStudente);