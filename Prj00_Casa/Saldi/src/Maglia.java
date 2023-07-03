
public class Maglia extends Abbigliamento {


	String tipo;
	

	public Maglia(String taglia, double prezzo, String colore, int quantita) {
		super(taglia, prezzo,colore, quantita);
		
	}


	@Override
	public void applicaSconto() {
		if(tipo.equals("felpa")&& getColore().equals("rosso")&&getQuantita()>2) {
			setPrezzo(getPrezzo()*0.1);
		}
		
	}
	
	
}
