package model;

public class Cappuccino extends Bevanda {

	public Cappuccino(double prezzo) {
		super(prezzo);
		this.nome = "Cappuccino";	}

	@Override
	public Bevanda prepara() {
		System.out.println("macina caffe");
		System.out.println("aggiungi acqua bollente");
		System.out.println("aggiungi latte in polvere");
		return this;
	}
	
	
	

}
