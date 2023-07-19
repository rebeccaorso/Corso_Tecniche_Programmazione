export class Studente{
    nome: string;
    cognome: string;
    materia?: string;

    constructor(nome: string, cognome: string, materia?: string){
        this.nome = nome;
        this.cognome = cognome;
        this.materia = materia;
    }
}