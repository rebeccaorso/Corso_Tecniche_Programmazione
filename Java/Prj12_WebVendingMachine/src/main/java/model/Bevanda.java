package model;

public abstract class Bevanda {

	protected String nome;
	protected double prezzo;
	
	

	public Bevanda(double prezzo) {
		super();
		this.prezzo = prezzo;
		
		System.out.println("metti il bicchiere");
		System.out.println("metti zucchero");
		System.out.println("metti paletta");
	}
	
	public abstract Bevanda prepara();

	@Override
	public String toString() {
		return "Bevanda [nome=" + nome + ", prezzo=" + prezzo + "]";
	}
	
	
	
	
	
	
	
}
