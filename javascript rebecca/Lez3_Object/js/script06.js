//dichiarazione con funzione costruttore

function Studente(nome, cognome, corso, presenza, matricola) {

    this.nome = nome;
    this.cognome = cognome;
    this.corso = corso;
    this.matricola = matricola;

    //dichiaro il metodo toString
    this.toString = function(){
        let descrizione = `Nome e Cognome: ${this.nome} ${this.cognome} <br>
                            Corso Frequentato: ${this.corso} <br>
                            Matricola: ${this.matricola}`;

        return descrizione;
    }
}


let studente1 = new Studente("Pippo", "Rossi", "Tecn Programm", true, 1);

console.log(studente1.toString());

let demo = document.getElementById("demo");
demo.innerHTML = studente1.toString();

let classe = [
    new Studente("Anna", "Bianchi", "Tecn Programm", true, 1),
    new Studente("Paolo", "Verdi", "Tecn Programm", true, 2),
    new Studente("Luisa", "Gialli", "Tecn Programm", true, 3),
    new Studente("Luca", "Neri", "Tecn Programm", true, 4),
    new Studente("Maria", "Qualcosa", "Tecn Programm", true,5),
    new Studente("Gennaro", "Gennari", "Tecn Programm", true, 6),

];

classe.forEach(studente => { 
    demo.innerHTML += `<div class= 'dimDiv'> ${studente.toString()} <br> 
    <button onclick = 'segnaAssenza(${studente})'> Segna Assenza </button> </div>`;

}); 

