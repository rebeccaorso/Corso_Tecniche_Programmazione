package controller;

import model.Prodotto;

public class ProdottoCtrl {
	
	
	
	private Prodotto[] prodotti; /* scatola che contiene prodotti */
	
	public ProdottoCtrl() {
		this.prodotti = new Prodotto[10]; /* inizializzare prodotti, array solo da 10 */
	}
	
	
	public ProdottoCtrl(int numProdotti) {  /*overload del metodo, posso fare array con int che voglio)*/
		this.prodotti = new Prodotto[numProdotti];
	}
	
	public void addProdotto(Prodotto p, int pos) {
		this.prodotti[pos] = p;
	}
	
	
	
	
	public void addProdotto(Prodotto p) {
		int pos = trovaPostoLibero();
		
		if (pos > -1) {
			this.prodotti[pos]= p;
		} else {
			System.out.println("Contenitore già pieno");
		}
	}
	
	
	
	
	private int trovaPostoLibero() {
		for (int i = 0; i < prodotti.length; i++) {
			if(this.prodotti[i]== null)
				return i;
		} 
		return -1;
	}
	
	
	
	public String stampa() {
		String scontrino = "";
		for (Prodotto prodotto : prodotti) {
			scontrino += prodotto + "\n";
		}
		return scontrino;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
