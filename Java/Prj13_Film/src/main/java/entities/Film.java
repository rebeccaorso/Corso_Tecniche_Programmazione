package entities;

public class Film {

	private int id;
	private String titolo;
	private String genere;

	public Film() {}

	public Film(int id, String titolo, String genere) {
		this.id = id;
		this.titolo = titolo;
		this.genere = genere;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getGenere() {
		return genere;
	}

	public void setGenere(String genere) {
		this.genere = genere;
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", titolo=" + titolo + ", genere=" + genere + "]";
	}
	
	
	
	
	
	
	

}
