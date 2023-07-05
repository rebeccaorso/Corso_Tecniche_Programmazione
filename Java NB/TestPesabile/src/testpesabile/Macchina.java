package testpesabile;

public class Macchina implements Pesabile, I {

    String nome;
    int peso;

    public Macchina(String nome, int peso) {
        this.nome = nome;
        this.peso = peso;
    }

    @Override
    public void pesa() {
        System.out.println("La macchina " + nome + " pesa " + peso);
    }

    @Override
    public String toString() {
        return "Macchina{" + "nome=" + nome + ", peso=" + peso + '}';
    }

    
}
