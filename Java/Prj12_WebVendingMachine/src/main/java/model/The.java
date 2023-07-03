package model;

public class The extends Bevanda{

	public The(double prezzo) {
		super(prezzo);
		this.nome = "The";
	}

	@Override
	public Bevanda prepara() {
		
		System.out.println("metti il the solubile");
		System.out.println("aggiungi acqua bollente");
		
//		return new The(this.prezzo);
//		return new The(0.5);
		return this;
	}

}
