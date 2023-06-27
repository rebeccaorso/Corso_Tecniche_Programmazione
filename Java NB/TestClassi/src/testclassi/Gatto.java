/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package testclassi;

public class Gatto {
    
    private String nome, razza;
    private int eta;

    /**
     * javadoc
     * costruttore con 3 parametri
     * @param nome
     * @param razza
     * @param eta 
     */
    public Gatto(String nome, String razza, int eta) { //gatto ctrl-space
        this.nome = nome;
        this.razza = razza;
        this.eta = eta;
    }
    
    /**
     * metodo che miagolare il gatto
     */
    public void miagola(){
        System.out.println("mia miao");
    }
    
    public void faiLeFusa(){
        System.out.println("prr prr");
    }
    
    
    //tasto destro insertcode scegli getters campi generate
  

    
    //tasto destro insertcode scegli campi generate
    @Override
    public String toString() {
        return super.toString(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazza() {
        return razza;
    }

    public void setRazza(String razza) {
        this.razza = razza;
    }

    public int getEta() {
        return eta;
    }

    public void setEta(int eta) {
        this.eta = eta;
    }
    
    
    
}
