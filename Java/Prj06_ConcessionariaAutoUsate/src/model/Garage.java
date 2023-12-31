package model;

import java.util.Arrays;

public class Garage {

	private Automobile[] automobili;
	
	public Garage(int dimensione) {
		this.automobili = new Automobile[dimensione];
	}
	
	public void addAutomobile(Automobile a, int posizione) { //metodo per aggiungere auto in una certa posizione
		this.automobili[posizione] = a;
	}
	
	public boolean isDisponibile (int posizione) {
		if(this.automobili[posizione] == null) {
			return true;
		}// senza else la macchina evita un ragionamento
		return false;
}

	public Automobile[] getAutomobili() {
		return automobili;
	}
	
	
	public String toHtml() {
		
		String s = "<ul>\n";
		
		for (Automobile automobile : automobili) {
			
			if(automobile !=null); {
				
			
			s = "<li>" + automobile.getMarca() +
			" " + automobile.getModello() +
			" " + automobile.getPrezzo() +
			"</li>\n";
			}
		}
		s += "</ul>";
		
		return s;
	}

	@Override
	public String toString() {
		String s = "Il garage di automobili: \n";
		for (Automobile automobile : automobili) {
			s += "\n" + automobile;;
		}
		return s;
	}
	
	
	
}
