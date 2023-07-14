
package testdb;
import personatest.Persona;

public class Studenti extends Persona{
    
    private int id;
    private String email;

    public Studenti(int id, String email, String nome, String cognome, int eta) {
        super(nome, cognome, eta);
        this.id = id;
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public int getId() {
        return id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    @Override
    public String toString() {
        return "id: "+id + super.toString()+" email "+email+ "\n"; 
    }
    
    
    
    
}
