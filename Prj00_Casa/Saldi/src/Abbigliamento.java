
public abstract class Abbigliamento {
	
	private String taglia;
	private double prezzo;
	private String colore;
	private int quantita;
	
	
	public Abbigliamento(String taglia, double prezzo, String colore, int quantita) {
		super();
		this.taglia = taglia;
		this.prezzo = prezzo;
		this.quantita = quantita;
		this.colore = colore;
	}


	public String getTaglia() {
		return taglia;
	}


	public void setTaglia(String taglia) {
		this.taglia = taglia;
	}


	public double getPrezzo() {
		return prezzo;
	}


	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}


	public int getQuantita() {
		return quantita;
	}


	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}


	public String getColore() {
		return colore;
	}


	public void setColore(String colore) {
		this.colore = colore;
	}


	@Override
	public String toString() {
		return "Abbigliamento [taglia=" + taglia + ", prezzo=" + prezzo + ", quantita=" + quantita + "]";
	}
	
	public abstract void applicaSconto();
	
	
	
}
