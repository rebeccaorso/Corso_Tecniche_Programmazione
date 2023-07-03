
public class Pantalone extends Abbigliamento{
	
	
	String modello;

	public Pantalone(String taglia, double prezzo, String colore, int quantita) {
		super(taglia, prezzo, colore, quantita);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void applicaSconto() {
		
		
		if(modello.equals("pantaloncini")&& getTaglia().equals("xl")){
			setPrezzo(getPrezzo()*0.2);
			
		}
	}

	
}
