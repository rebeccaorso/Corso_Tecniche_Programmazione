import { Component } from '@angular/core';

@Component({
  selector: 'app-root', //nome del tag che utilizzo
  templateUrl: './app.component.html', //html fogli di stile
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'my-app0';
  autore: string ="Dario";
}
