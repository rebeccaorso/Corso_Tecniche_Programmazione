package giovedi;

import java.util.Scanner;

public class Giovedi {

    public static void main(String[] args) {
        /*   
        int x=10;
        int y=3;
        
        System.out.println("x= "+x+" y= "+y);
        
       // int temp; //Swap

       // temp=x;
       // x=y;
       // y=temp;
                        
        //System.out.println("x= "+x+" y= "+y);
        
        Scanner s= new Scanner(System.in);
        System.out.println("nome");
        String nome=s.nextLine();
        System.out.println("eta");
        int eta=s.nextInt();
        System.out.println("colore");
        s.nextLine(); // per pulire lo scanner dall'invio
        
        String colore= s.nextLine();
         */
        //21 14 24 7

        Scanner sc = new Scanner(System.in); //inserire 4 numeri e fare somma usando solo due variabili

        int num;
        int ris; //ris=0

        System.out.println("Inserire 21, 14, 24, 7 e sommarli");

        num = sc.nextInt(); //1°valore
        ris = sc.nextInt();
        ris = num + ris;

        num = sc.nextInt();
        ris = num + ris;
        num = sc.nextInt();
        ris = num + ris;

        System.out.println("Il risultato e'..." + ris);

        /*
        int num, somma=0; // accumulatore - somma incrementale
        Scanner sc= new Scanner(System.in);
        
        System.out.println("Inserisci il primo numero");
        num = sc.nextInt();
        somma+=num;
        
        System.out.println("Inserisci il secondo numero");
        num = sc.nextInt();
        somma+=num;
        
        System.out.println("Inserisci il terzo numero");
        num = sc.nextInt();
        somma+=num;
        
        System.out.println("Inserisci il quarto numero");
        num = sc.nextInt();
        somma+=num;
        
        System.out.println("Il risultato e'..." +somma); 
        
         */
    }

}
