package cicli2;

import java.util.Random;
import java.util.Scanner;

public class Cicli2 {

    
    public static void main(String[] args) {
        
        for (int i = 0; i < 10; i++) {
            System.out.println(i);
        }
        
        
        for (int i = 10; i > 10; i--) {
            System.out.println(i);
        }
        
        
        System.out.println("ciclo col while");
        int i=20;
        
          do{
            System.out.println(i);
            i++;
        }while(i<10);
          
        

    Scanner s = new Scanner(System.in);
//    
//    do{
//        System.out.println("metti un numero, 0 per uscire");
//    }while (s.nextInt()>0);

    
    char lettera = 'a';
    
    while(lettera<='z'){
        System.out.println(lettera);
        lettera++;
    }
    
        for (lettera='a'; lettera <= 'z'; lettera++) {
            System.out.println(lettera);
           
        }
    
    
        for (lettera='a'; lettera < 'z'; lettera++) {
            
           switch(lettera){
               case 'a', 'e', 'i', 'o', 'u':
                System.out.println(lettera+ " è una vocale");
                break;
               default:
                   System.out.println(lettera+" è una consonante");
           }
        }
    
    int numVocali=0;
    int numConsonanti=0;
    
    for (lettera='a'; lettera <= 'z'; lettera++) {
            
           switch(lettera){
               case 'a', 'e', 'i', 'o', 'u':
                System.out.println(lettera+ " è una vocale");
                numVocali++;
                break;
               default:
                   System.out.println(lettera+" è una consonante");
                   numConsonanti++;
           }
        }
        System.out.println("ci sono "+numVocali + " vocali e " + numConsonanti+ " consonanti");
    
    
        for (int j = 0; j < 10; j++) {

            if(j==5){
                continue;
            }
                    System.out.println(j);
        }

    while (true){
        System.out.println("inserisci un numero, 0 per uscire");
        int numero=s.nextInt();
        System.out.println("Hai inserito "+numero);
        if (numero==0){
            System.out.println("esco, ciao");
            break;
        }
           
    }
        
        int val=0;
        for (;;) {
            System.out.println(val);
            if (val==10){
                break;
            }
            val++;
            }
        
    // ESERCIZIO //
    
    //Creare programma che dato numero casuale da indovinare da 0 a 10, 
    //chiede all'utente di indovinarlo
    // l'utente ha 10 tentativi
    //se l'utente sbaglia, dire se numero da indovinare è più piccolo o grande
    //del numero inserito dall'utente
    
        Random r = new Random();
        
        int numero1 = r.nextInt(0,11);
        
        System.out.println("Indovina il numero");
        
        for (int j = 0; j <= 10; j++) {
            if(s.nextInt()== numero1) {
            System.out.println("Hai indovinato");
        }else{
                System.out.println("");
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        }
    
        
    }
    