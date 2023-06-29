
package testnegozio;


public class Prodotto{
    
    private String descrizione;
    private int codice;
    private double prezzo;
    private Cliente cliente;

    public Prodotto(String descrizione, int codice, double prezzo) {
        this.descrizione = descrizione;
        this.codice = codice;
        this.prezzo = prezzo;
        this.cliente= cliente;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public int getCodice() {
        return codice;
    }

    public void setCodice(int codice) {
        this.codice = codice;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    /**metodo sconto
     * 
     * @param percentuale 
     */
    public void applicaSconto(int percentuale){
        if(cliente.getEta()>60){
            prezzo-=((prezzo*5)/100);
            System.out.println("Il nuovo prezzo e "+prezzo);
        }else{
            System.out.println("Non hai diritto allo sconto");
        }
    }
    
    
}
