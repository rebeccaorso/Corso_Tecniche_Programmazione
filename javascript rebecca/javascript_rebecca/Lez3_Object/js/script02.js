//oggetto con notazione letterale

let studente = {
    nome: "Rebecca",
    cognome:"Orso",
    matricola: 123,
    promosso: true,

    //dichiaro un metodo
    superaEsame: function(){
        // console.log('hai superato l\'esame');
        return "Hai superato l'esame"
    },


    presentati(){ //funzione versione compatta senza :function
        // console.log("Ciao mi chiamo " + this.nome);
        let presentazione = "ciao mi chiamo "+ this.nome;
        return presentazione
    },

    assegnaMaterie(mat1, mat2){
        let elencoMaterie = [mat1, mat2];

        if(mat1 == "" || mat2 == ""){
            return "Guarda che non hai assegnato una materia"
        }else{
            return elencoMaterie;
        }
    }
    
}

//accedo alle proprieta
console.log(studente.nome);
console.log(studente.cognome);
console.log(studente.matricola);

// studente.presentati();
console.log(studente.presentati());
console.log(studente.superaEsame());

console.log(studente.assegnaMaterie("Java", "Angular"));