import { Component } from '@angular/core';
import { Studente } from '../models/studente.model';

@Component({
  selector: 'app-studenti',
  templateUrl: './studenti.component.html',
  styleUrls: ['./studenti.component.css']
})
export class StudentiComponent {

  // listaStudenti: string[] = [
  //   "Andrea",
  //   "Angel",
  //   "Rebecca",
  //   "Alberto",
  //   "Andrea",
  //   "Matteo",
  //   "Andreea",
  //   "Eduard",
  //   "Dario",
  //   "Gabriele",
  //   "Marco",
  //   "Luca",
  //   "Bryan",
  //   "Andres",
  //   "Alessandro"
  // ];

  //voglio utilizzare gli oggetti al posto della string

  // listaStudenti: object[] = [...];

  // listaStudenti: {
  //   nome: string,
  //   cognome: string,
  //   materia: string
  // }[] = [
  //   {
  //   nome:"Andrea",
  //   cognome:"Savoia",
  //   materia:"Angular"
  //   },
  //   {
  //     nome:"Angel",
  //     cognome:"Cocco",
  //     materia:"Angular"
  //     }
  // ]

  // listaStudenti: Studente[] = [
  //   {
  //   nome:"Andrea",
  //   cognome:"Savoia",
  //   materia:"Angular"
  //   },
  //   {
  //     nome:"Angel",
  //     cognome:"Cocco",
  //     materia:"Angular"
  //     },
  //     {
  //     nome:"Alessandro",
  //     cognome:"Piccolo"
  //     }
  // ]

  listaStudenti: Studente[] = [
    new Studente("Rebecca","Orso","Angular"),
    new Studente("Alberto","Bosco","Angular"),
    new Studente("Andrea","Lentini"),
    new Studente("Luca", "Riggio", "Java"),
    new Studente("Marco","Cavanna")
  ]


}
