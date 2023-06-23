package pkg06.pkg2023.gestioneeccezioni;

import java.util.InputMismatchException;
import java.util.Scanner;



public class GestioneEccezioni {

    
    
    public static void main(String[] args) {
        
        int a = 10;
    int b=0;
    
//    int c= a/b; //non funziona
    
    try{
    int c=a/b;
        System.out.println(c);
    }catch(NullPointerException | ArithmeticException e){
        System.out.println("niente panico è solo diviso 0" + e.getMessage());  
    }catch(Exception e){
        System.out.println("altro errore che non so qual è" + e.getMessage());
    }finally{
        System.out.println("vengo eseguito comunque anche se non ci sono errori");
    }
    
        System.out.println("ciao");
    
        
        ////////////
        
        int[] arr={1, 2, 3, 4, 5,};
        try{
             for (int i = 0; i <= arr.length; i++) {
                 System.out.println(arr[i]); // Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException
                 }
        }catch(ArrayIndexOutOfBoundsException e){
            System.out.println("hai superato il limite" + e.getMessage());
        }finally{
                System.out.println("faccio qualcos'altra cosa");
                }
        
        ////////
        
        Scanner s = new Scanner(System.in);
        
        System.out.println("inserisci un numero");
        

        try{
        int num = s.nextInt();
        s.nextLine(); //pulire scanner dall'invio
        }catch(InputMismatchException e){
            System.out.println("non è un input valido");
            s.nextLine();
        }
         
        ///////////////////
        
        int z = 5;
        
        try{
        if (z==5){
            throw new Exception("il 5 mi fa schifo");
        }
        }catch(Exception e){
            System.out.println("sto gestendo l'errore che hai sollevato"+ e.getMessage());
        }
        
        ////////////
        
        //  PROPAGAZIONE DELLE ECCEZIONI
        try{
            System.out.println("blocco try esterno");  
            
            try{
                System.out.println("blocco try interno");  
                throw new Exception("eccezione sollevata dal blocco interno");
                
                
            }catch(ArithmeticException e){
                System.out.println("gestisco l'eccezione del blocco interno");    
            }finally{
                 System.out.println("finally del blocco interno");
            }

        }catch(Exception e){
            System.out.println("Sto gestendo l'eccezione che non è gestita dal blocco interno");
            
        }finally{
            System.out.println("finally del blocco esterno");
        }
        try{  //checked
            leggiNumero("ciao");
        }catch(Exception e){
            System.out.println("errore di conversione");
        }
                
        
        try{ //checked
        double ris=dividi(10, 0);
            System.out.println(ris);
        }catch(Exception e){
            System.out.println("errore divisione per 0");
        }       
                
        
        
        try{
        analizzaInput("");
        }catch(Exception e){
            System.out.println("errore " + e.getMessage());
        }

    } //fine main
    
    static void leggiNumero(String stringa) throws Exception{
        System.out.println("provo a convertire una stringa in un numero");
        
        
        int i=Integer.parseInt(stringa);
        System.out.println("i=" +i);
    }

    
    static double dividi(int uno, int due)throws Exception{
        double c=uno/due;
        return c;
    }
    
    /////////////////////////////////////
    
    static void analizzaInput(String input) throws Exception {
        
        if(input==null || input.isEmpty()){
            throw new Exception("input non puo essere vuoto");
            
        }
    }
    
    
}
