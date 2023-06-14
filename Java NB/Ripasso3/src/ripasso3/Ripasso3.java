package ripasso3;

import java.util.Scanner;

public class Ripasso3 {

    public static void main(String[] args) {

        int x = 10;
        System.out.println(x++); // post incremento
        System.out.println(x);

        System.out.println(++x); // pre incremento

        x += 3; // x=x+3
        System.out.println(x);

        x -= 3;
        x *= 3;
        x /= 3;

        int y = 11;
        int resto = y % 2; //operatore modulo
        System.out.println(resto); // se resto 0 è pari se 1 è dispari

        /// CLASSI  WRAPPER ///
        /*sono delle classic he estendono il funzionamento dei tipi primitivi.
        questo mi permette di usare dei metodi. trasformo i primitivi in classi
         */
        Integer numero = 10;
        Double virgola = 3.14;
        Float f = 3.14F;
        Boolean b = true;
        Character c = '@';

        int valore = Integer.parseInt("10"); // posso dichiarare una variabile primitiva
        valore++;
        System.out.println(valore);

        //posso prendere un numero e convertirlo in una stringa
        int q = 10;
        String parola = Integer.toString(q);
        System.out.println(parola);

        int w = 5;

        int massimo = Integer.max(q, w);
        System.out.println("Il massimo tra q e w e' " + massimo);

        int minimo = Integer.min(q, w);
        System.out.println("Il minimo tra q e w e' " + minimo);

        System.out.println(Integer.MAX_VALUE);
        System.out.println(Integer.MIN_VALUE);

        System.out.println(Byte.MAX_VALUE);
        System.out.println(Byte.MIN_VALUE);

        final double PIGRECO = 3.14; // costante, va scritta in maiuscolo

        // scanner
        Scanner s = new Scanner(System.in);

        System.out.println("Inserisci il tuo nome");
        String nome = s.nextLine();
        System.out.println("Ti chiami " + nome);

        System.out.println("Inserisci l'eta'");
        int eta = s.nextInt();
        System.out.println("hai " + eta + " anni");

        s.nextLine(); //per ricevere l'invio

        System.out.println("Colore preferito");
        String colore = s.nextLine();

    }

}
