package model;

public class Automobile {

	//incapsulamento(privato) - astrazione
	
	private int id; //getId o setId
	private String marca;
	private String modello;
	private int anno;
	private int km;
	private double prezzo;
	
	
	// metodo costruttore
	//polimorfismo per metodi
		//overload = diversi metodi con lo stesso nome, ma con parametri differenti per numero o per tipo
	public Automobile(String marca, String modello) {
		this.marca = marca;
		this.modello = modello;	
	}
	
	
	// metodi getters/setters metodi accessori e mutatori
	public Automobile(String marca, String modello, int anno) {
		this.marca = marca;
		this.modello = modello;
		this.anno = anno;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModello() {
		return modello;
	}

	public void setModello(String modello) {
		this.modello = modello;
	}

	public int getAnno() {
		return anno;
	}

	public void setAnno(int anno) {
		this.anno = anno;
	}

	public int getKm() {
		return km;
	}

	public void setKm(int km) {
		this.km = km;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	
	//override = scovrascrittura di un metodo della superclasse ( in questo caso Object)
	
	@Override
	public String toString() {
		return "Automobile [id=" + id + ", marca=" + marca + ", modello=" + modello + ", anno=" + anno + ", km=" + km
				+ ", prezzo=" + prezzo + "]";
	}
	
	
	
	
}
