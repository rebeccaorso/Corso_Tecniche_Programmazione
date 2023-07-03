package model;

public class Caffe extends Bevanda {
	

	public Caffe(double prezzo) {
		super(prezzo);
		this.nome = "Caffe";
	}

	
	@Override
	public Bevanda prepara() {
		System.out.println("macina caffe");
		System.out.println("aggiungi 5cl di acqua");		
		return this;
	}


		
	}
	
	


