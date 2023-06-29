
package testnegozio;
import personatest.Persona;

public class Cliente extends Persona{
    private int tessera;

    public Cliente(int tessera, String nome, String cognome, int eta) {
        super(nome, cognome, eta);
        this.tessera = tessera;
    }

    public int getTessera() {
        return tessera;
    }

    public void setTessera(int tessera) {
        this.tessera = tessera;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
