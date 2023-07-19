import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  //posso anche non dichiarare il tipo
  title = 'la mia prima APP in Angular';

  //sto dichiarando il tipo
  autore: string ="Dario";
  cognome: string;
  eta: number = 34;
  materieInsegnate: string[] = ["Angular","JS", "Java", "Html"];

constructor(){
  this.cognome = "Mennillo";
}


}
