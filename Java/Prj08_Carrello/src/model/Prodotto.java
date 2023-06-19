package model;

public class Prodotto {
	
	
	private String nome;
	private String codice;
	private double prezzo;
	
	/**
	 * Crea un nuovo prodotto.
	 * @param nome Inserisci nome prodotto
	 * @param codice Passa il codice prodotto
	 * @param prezzo Prezzo del prodotto
	 */
	
	
	
	
	public Prodotto(String nome, String codice, double prezzo) {
		this.nome = nome;
		this.codice = codice;
		this.prezzo = prezzo;
	}

	
	
	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}



	@Override
	public String toString() {
		return "Prodotto [nome=" + nome + ", codice=" + codice + ", prezzo=" + prezzo + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
