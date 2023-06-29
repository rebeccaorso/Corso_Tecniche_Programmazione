
package testnegozio;

public class NonAlimentari extends Prodotto{
    private String materiale;
    

    public NonAlimentari(String materiale, Prodotto p, String descrizione, int codice, double prezzo) {
        super(descrizione, codice, prezzo);
        this.materiale = materiale; 
        this.prezzo = prezzo;
    }

   

    @Override
    public String toString() {
        return super.toString()+"materiale "+materiale;
    }
    
   
    public void applicaSconto(){
        if(getCliente().getEta()>60){
            getPrezzo()-=((prezzo*5)/100);
            System.out.println("Il nuovo prezzo e "+prezzo);
        }else{
            System.out.println("Non hai diritto allo sconto");
        }
    }
    
    
    
}
