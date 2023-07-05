package testpesabile;

public class Cane implements Pesabile, I {

    String nome;
    double peso;

    public Cane(String nome, double peso) {
        this.nome = nome;
        this.peso = peso;
    }

    @Override
    public void pesa() {
        System.out.println("Il cane " + nome + "pesa " + peso);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Cane{");
        sb.append("nome=").append(nome);
        sb.append(", peso=").append(peso);
        sb.append('}');
        return sb.toString();
    }

}
