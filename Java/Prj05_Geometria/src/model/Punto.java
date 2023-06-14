package model;

public class Punto {
	
	public int x, y; 
	/* posso dichiararne due sulla stessa riga
	minuscole camelcase le variabili. metodo minuscolo con le tonde. DD! cos'è classe e oggetto 
	metodo costruttore "new xx" xx è il costruttore. ha lettera maiuscola e stesso nome della classe. 
	DD! NON HANNO TIPO DI RITORNO. costruisce l'oggetto e ritorna il riferimento all'oggetto */
	
	/**
	 * Costruttore del Punto
	 * @param x - passare come primo parametro il valore di x di questo punto
	 * @param y - passare come secondo parametro il valore di y di questo punto
	 */
	public Punto(int x, int y) { // parametri formali
		this.x = x; // this PUNTATORE AUTOREFERENZIALE.
		this.y = y;
	}
	
	public String toString() { // rappresntiamo un punto sotto forma di stringa
		return "(" + this.x + "," + this.y +")";
	}
	

}
