package gioco;

import java.util.Scanner;

public class DemoSFC {

	public static void main(String[] args) {
		//1) chiedi all'umano
		String umano = sceltaUmano();
		
		//2) scelta random della macchina
		String macchina = sceltaMacchina();
		
		//3) confronta la scelta dell'uman e della macchina
		String result = calcolaRisultato(umano, macchina);
		
		//4) stampa il risultato
		System.out.println(result);
		//5) ripeti il gioco finchè umano fa scelte corrette
		
		//6) stampa statistiche del gioco
		String report = stampaReport(umano, macchina, result);
		System.out.println(report);
		
	}

	private static String stampaReport(String umano, String macchina, String result) {
		String report = "Umano: " + umano + "\n"
				+ "Macchina: " + macchina + "\n"
				+ "Risultato: " + result + "\n";
		return report;
	}

	private static String calcolaRisultato(String umano, String macchina) {
		
		String result = "Vince umano";
		
		if(umano.equalsIgnoreCase(macchina)) {
			result = "Pareggio";
			} else {
				if(umano.equalsIgnoreCase("S")) {
					if(macchina.equals("C")) {
						result = "Vince macchina";
					}
				}
				if(umano.equalsIgnoreCase("F")) {
					if(macchina.equals("S")) {
						result = "Vince macchina";
					}
				}
				if(umano.equalsIgnoreCase("C")) {
					if(macchina.equals("F")) {
						result = "Vince macchina";
					}
				}
					
			}
		return result;
	}

	private static String sceltaMacchina() {
		double casuale = Math.random();
		
		if (casuale < 0.33)
			return "S";
		else
			if (casuale < 0.66)
				return"F";						
		return "C";
	}
	
	private static String sceltaUmano() {
		System.out.println("Scegli tra: (S)sasso - (F)forbici - (C)carta");
		
		Scanner mioScanner = new Scanner(System.in);
		return mioScanner.nextLine();
		
	}
}
