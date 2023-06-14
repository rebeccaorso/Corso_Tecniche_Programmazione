package view;

import java.util.Scanner;

public class LibreriaDemo {

	//static: che appartiene alla CLASSE
	public static void main(String[] args) {
		System.out.println("Libreria 233");
		
		String azioneUtente = chiediAllUtente("Utente! Cosa vuoi fare?");
		
		if (azioneUtente.equals("addLibro")) {
		System.out.println("L'utente vuole aggiungere un libro");
		String titolo = chiediAllUtente("Quale titolo vuoi inserire?");
		System.out.println("Vuoi inserire il titolo " + titolo);
		}
		
	if (azioneUtente.equals("getLibri")) {
			System.out.println("L'utente vuole vedere tutti i libri");
		}
	}

//	public static String chiediAllUtente() {
		
//		String casuale= "test";
		
//		if (Math.random() > 0.5 ) 
//			casuale = "pippo";
//		
//		return casuale;
//	}
		
	public static String chiediAllUtente(String domanda) {
		//String domanda = "Utente! Cosa vuoi fare?";
		System.out.println(domanda);
		Scanner scannerEpson = new Scanner(System.in);
		String risposta = scannerEpson.nextLine();
		return risposta;
	}

}
