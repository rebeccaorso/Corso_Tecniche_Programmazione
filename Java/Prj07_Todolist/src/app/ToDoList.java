package app;

import model.ListaSpesa;
import model.ToDo;


public class ToDoList {

	public static void main(String[] args) {

		//chiedi all'utente cosa vuole comprare
		
		// chiedi all'utente quale azione compiere
		
			//for (int i = 0; i < 5; i++) {
			//String risposta = MioScanner.leggiString("cosa vuoi comprare?");
			//System.out.println(risposta);
			
		//}
		
		ListaSpesa lista = new ListaSpesa();
		
		for (int i = 0; i < 10; i++) {
			String risposta = MioScanner.leggiString("Cosa vuoi comprare");
			
			ToDo t = new ToDo(risposta);
			lista.addToDo(t, i);
			
			System.out.println(lista.printToDo());
			
		}
		lista.addToDo(null, 0);
		
	}
}


