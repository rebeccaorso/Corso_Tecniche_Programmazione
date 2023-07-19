import { Component } from '@angular/core';
import { Docente } from '../models/docente.model';

@Component({
  selector: 'app-docenti',
  templateUrl: './docenti.component.html',
  styleUrls: ['./docenti.component.css']
})
export class DocentiComponent {

listaDocenti: Docente[] = [
  new Docente("Dario","Mennillo", "online", 2, "Angular"),
  new Docente("Mauro", "Bogliaccino", "offline", 3, "Java")
]

}
