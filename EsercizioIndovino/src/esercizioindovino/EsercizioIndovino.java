package esercizioindovino;

import java.util.Random;
import java.util.Scanner;

public class EsercizioIndovino {

    
    public static void main(String[] args) {
        
    

            //Creare programma che dato numero casuale da indovinare da 0 a 10, 
    //chiede all'utente di indovinarlo
    // l'utente ha 10 tentativi
    //se l'utente sbaglia, dire se numero da indovinare è più piccolo o grande
    //del numero inserito dall'utente
    
        Random r = new Random();
        Scanner s = new Scanner(System.in);
        
        int numero1 = r.nextInt(0,11);
        int i = 0;

        
        System.out.println("Indovina il numero, hai 10 tentativi");

              
//        while(i < 10){
//            int indovina = s.nextInt();
//            if(indovina > numero1){
//                System.out.println("Il tuo numero è troppo grande");
//            }
//            else if(indovina < numero1){
//                System.out.println("Il tuo numero è troppo piccolo");
//          }
//            else{
//            System.out.println("Hai indovinato");
//            break;
//        }            
//           i++;
//        }
//   System.out.println(numero1);
   
            for(i = 0; i < 10; i++){
                    System.out.println("Inserisci un numero");
                int indovina = s.nextInt();
                   if(indovina > numero1){
                        System.out.println("Il tuo numero è troppo grande");
                    }
                    else if(indovina < numero1){
                        System.out.println("Il tuo numero è troppo piccolo");
                  }
                    else{
                    System.out.println("Hai indovinato");
                    i=10;
                    
                }            
        }
   
      
    
   
    
    
    
    
    
    
    
   
    }
}
        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

    


