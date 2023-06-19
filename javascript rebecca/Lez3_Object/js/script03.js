//oggetto con notazione letterale

let studente = {
    nome: "Rebecca",
    cognome:"Orso",
    matricola: 123,
    promosso: true,
    corso: "",

    //dichiaro un metodo
    superaEsame: function(){
        // console.log('hai superato l\'esame');
        return "Hai superato l'esame"
    },


    presentati(){ //funzione versione compatta senza :function
        // console.log("Ciao mi chiamo " + this.nome);
        let presentazione = "ciao mi chiamo "+ this.nome;
        return presentazione;
    },


    //creo metodo per definire quel corso
    assegnaCorso(corso){
        this.corso = corso; 

        return "Hai appena assegnato " + corso + " allo studente " + this.nome;
    }
}

// console.log(studente.corso);
// console.log(studente.assegnaCorso("Tecniche di Programmazione"));
// console.log(studente.corso);

let nome = document.getElementById("nome");
let cognome = document.getElementById("cognome");
let corso = document.getElementById("corso");
let btn = document.getElementById("btn");

function stampaInfo(){
    nome.innerHTML = "Nome: "+ studente.nome;
    cognome.innerHTML = "Cognome: " + studente.cognome;


    if(studente.corso == ""){
        corso.innerHTML = "Corso non ancora assegnato"
    }else{
        corso.innerHTML = "Corso: "+ studente.corso;
    }
}

function assegnaCorso(){
    let nomeCorso = document.getElementById("nomeCorso").value;
    studente.assegnaCorso(nomeCorso);
    stampaInfo();
}

btn.addEventListener("click", assegnaCorso);

stampaInfo();