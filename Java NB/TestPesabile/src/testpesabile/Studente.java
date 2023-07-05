package testpesabile;

import personatest.Persona;

public class Studente extends Persona implements Pesabile, I {

    double peso;

    public Studente(double peso, String nome, String cognome, int eta) {
        super(nome, cognome, eta);
        this.peso = peso;
    }

    @Override
    public void pesa() {
        System.out.println("Lo studente " + getNome() + "pesa " + peso + "eta " + getEta());
    }

    @Override
    public String toString() {
        return "Studente{" + "peso=" + peso + '}';
    }

}
