package app;

import java.util.Scanner;

public class MioScanner {
	
	private static Scanner scan = new Scanner(System.in);

	public static String leggiString(String domanda) {
		System.out.println(domanda);
		String risposta = scan.nextLine();
		scan.nextLine();
		return risposta;
	}
	
	public static double leggiDouble(String domanda) {
		System.out.println(domanda);
		return scan.nextDouble(); /* mi serve per farmi dare il prezzo del prodotto*/
	}
	
	
	public static int leggiInt(String domanda) {
		System.out.println(domanda);
		return scan.nextInt(); 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
