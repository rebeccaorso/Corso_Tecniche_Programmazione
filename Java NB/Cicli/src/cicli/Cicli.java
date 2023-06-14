package cicli;

import java.util.Random;

public class Cicli {

    
    public static void main(String[] args) {
        
        
        for(int i=0; i<10; i++){
            System.out.println(i);
        }
        
System.out.println("*******");
        
        for (int i = 5; i < 16; i++) {
            System.out.println(i);
            
        }
System.out.println("*******");
            
        for (int i = 10; i >0; i--) {
            System.out.println(i);
        }
System.out.println("*******");
        
        
        for (int i = 0; i < 10; i+=2) {
            System.out.println(i);
        }
        
        
//        for (int i = 0; i < 256; i++) {
//            System.out.println((char)i);
//            
//        }
System.out.println("*******");

        int contatore=0;
        for (; contatore < 10;) {
            System.out.println(contatore);
            contatore++;
        }
System.out.println("*******");
                
        for (int i = 0, j=10; i < 10; i++, j--) {
            System.out.println(i+ " "+j);
        }
System.out.println("*******");
                
        String a="ciao a tutti";
        for (int i = 0; i < a.length(); i++) {
            System.out.println(a.charAt(i)); // carattere alla posizione i
            
        }
        
System.out.println("*******");

        String frase="ciao a tutti oggi piove";
        int numeroSpazi=0;
        
        for (int i = 0; i < frase.length(); i++) {
            
            if(frase.charAt(i)==' '){
                numeroSpazi++;
            }
        }
        
        System.out.println("ci sono "+ numeroSpazi+ " spazi");
        
System.out.println("*******");      
        
        Random r= new Random();
        int casuale=r.nextInt(1,21); //1-20
        boolean trovato=false;
        int posizione=0;

        for (int i = 1; i <= 10; i++) {
            System.out.println(i);
            
            if(i==casuale){
                trovato=true;
            System.out.println("trovato");
            posizione=1;
                break;
                
             
            }
        }
        
         System.out.println(posizione);  
         
         
        //String siNo trovato?"il numero "+ casuale" è stato trovato":"non è stato trovato";
        //System.out.println(siNo);
        
        
        
System.out.println("*******");        
        
        for (int i = 1; i <= 10; i++) { //per ogni ciclo di questo
            
                for (int j = 1; j <= 10; j++) { // stampo tutti i valori
                    System.out.print("\t"+i*j);// stampo i valori in linea
            }
               System.out.println(""); //vado a capo dopo il ciclo esterno
        }







    }

}
