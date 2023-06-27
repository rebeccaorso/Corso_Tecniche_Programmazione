
package personatest;


    //1 incapsulamento
    //2 ereditarietà
    //3 polimorfismo


public class Persona {
    
    
    //attributi
    private String nome;
    private String cognome;
    private int eta;
    private boolean maggiorenne;
    private final int NUMERO_OCCHI=2;
    
    
    /////////////////////////////////////////////
    public void setNome(String nome){
        this.nome = nome;
    }
    
    
    /**
     * //java 
     * @param cognome 
     */
    public void setCognome(String cognome){
        this.cognome=cognome;
    }
    
    public void setEta(int eta){
        this.eta=eta;
    }
    
    public void setMaggiorenne(boolean maggiorenne){
        this.maggiorenne=maggiorenne;
    }
    
    public String getNome(){
        return nome; //o this.nome
    }
    
     public String getCognome(){
        return cognome; 
    }
     
    public int getEta(){
        return eta; 
    }
    
     public boolean getMaggiorenne(){
        return maggiorenne; 
    }
    
    
    Persona(){};
    
    //overload del metodo costruttore
    Persona(String nome, String cognome, int eta){
        this.nome=nome;
        this.cognome=cognome;
        this.eta=eta;
    }
    
    Persona(String nome, String cognome){
        this.nome=nome;
        this.cognome=cognome;
    }
    
    //metodi
    public void mangia(String cibo){
        System.out.println("Sto mangiando cibo");
    }
    
    public void mangia(String pranzo, String cena){
        System.out.println("A pranzo mangio "+pranzo+"A cena mangio "+cena);
    }
    
    public void dormo(){
        System.out.println("zzzzzzzzzzzz");
    }
    
    public boolean isMaggiorenne(){
        return eta>=18;
    }
    
//    public void info(){
//        System.out.println("La persona si chiama "+ nome+ " "+ cognome
//                + " ha " + eta + " anni "
//                + "è maggiorenne? " + maggiorenne
//                + " E ha come tutti " + NUMERO_OCCHI + " occhi");
//    }
//    
    @Override
    public String toString(){
        return"La persona si chiama "+ nome+ " "+ cognome
                + " ha " + eta + " anni "
                + "è maggiorenne? " + maggiorenne
                + " E ha come tutti " + NUMERO_OCCHI + " occhi";
    }
    
    
    public boolean equals(Object o){
        return this.nome.equals(((Persona)(o)).nome) && //cast di O facendolo diventare di tipo persona
                this.cognome.equals(((Persona)(o)).cognome);
    }
    
    
}
