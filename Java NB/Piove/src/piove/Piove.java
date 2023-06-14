package piove;

import java.util.Scanner;



public class Piove {

    
    public static void main(String[] args) {
        
        int voto=8;
        
        if (voto>=6) {
            System.out.println("promosso");
        }else {
            System.out.println("bocciato");
        }
        
        
        // operatore ternario
        
        //1 condizione
        // 2 cosa fare se vero
        // 2 cosa fare se falso
        
        System.out.println(voto>=6?"promosso":"bocciato");
        
        
//        int a=10;
//        int b=20;
//        
//        int max;
//        
//        if(a>b) {
//            max=a;
//        }else {
//            max=b;
//        }
//        
        
//        max=(a>b)?a:b;
//        
        
        int a=10;
        int b=10;
        
        int max;
        
        if(a>b) {
            max=a;
        }else if (a==b) {
        max=0; 
        }else{
            max=b;
        }
        
        
        max=(a>b)?a:(a==b)?0:b;
        
        
        
        ////////////////////////////
        
        int i=3;
        if(i==0) {
            System.out.println("i==0");
        }else if(i==1){
            System.out.println("i==1");
        }else if(i==2){
            System.out.println("i==2");
        }else{
            System.out.println("i è diverso 0,1,2");
        }
        
        switch (i) {
            case 0:
                System.out.println("i==0");
                break;
            case 1:
                System.out.println("i==1");
                break;
            case 2:
                System.out.println("i==2");
                break;
            default:
                System.out.println("i è diverso 0,1,2");
        }
        
        String lettera="i";
        String messaggio;
        
        switch(lettera){
            
            case"a":
            case"e":
            case"i":
            case"o":
            case"u":
                messaggio="vocale";
                break;
            default:
                messaggio="consonante";
        }
        
        System.out.println(messaggio);
        
        
        switch(lettera){
            case "a","e","i","o","u" ->messaggio="vocale";
            default ->messaggio="consonante";
        }
        
        //dato un mese restituire il numero di giorni
        //febbraio 28
        //novembre 30
        
        
        Scanner s = new Scanner(System.in);
        System.out.println("Inserisci un mese");
        
        String mese = s.nextLine().toLowerCase();
        
        switch(mese){
            case"gennaio":
            case"marzo":
            case"maggio":
            case"luglio":
            case"agosto":
            case"ottobre":
            case"dicembre":
                messaggio="Sono 31 giorni";
                break;
            case"aprile":
            case"giugno":
            case"settembre":
            case"novembre":
                messaggio="Sono 30 giorni";
                break;
            case"febbraio":
                messaggio="Sono 28 giorni";
                break;
            default:
                messaggio="Non hai inserito un mese valido";
            
        }
        
        System.out.println(messaggio);
        
        
        switch(mese){
            case "aprile","giugno""settembre","novembre"->System.out.println(mese +"ha 30 giorni");
:           case"gennaio","marzo","maggio","luglio","agosto","ottobre","dicembre"->System.out.println(mese +"ha 31 giorni");
            
            
            case
            case
            case
            case
        }
        
        
        
    }

}
