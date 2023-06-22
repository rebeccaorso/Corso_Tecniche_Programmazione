package esercizio.rubrica;

import java.util.ArrayList;
import java.util.Scanner;


public class EsercizioRubrica {

   static Scanner s; // fuori il main così è visibile anche fuori, in modo globale
   static ArrayList<String> nomi = new ArrayList();

   
  public static void main(String[] args) {
         
      
    s =  new Scanner(System.in); //inizializzare variabile
        
        while(true){
            System.out.println("Scegli una opzione");
            System.out.println("1 inserisci nome");
            System.out.println("2 cancella nome");
            System.out.println("3 cerca un nome");
            System.out.println("4 visualizza tutto");
            System.out.println("5 esci");    
           
            
              int scelta = s.nextInt();
              s.nextLine(); //per pulire lo scanner
       
        switch(scelta){
            
            case 1:
                inserisciNome();
                break;
            case 2:
                cancellaNome();
                break;
            case 3:
                cercaNome();
                break;
            case 4:
                visualizza();
                break;
            case 5:
                System.out.println("ciao");
                return;
            default:
                System.out.println("non è una scelta valida");
        }
   }

    }// fine main
    
    static void inserisciNome(){
        System.out.println("inserisci il nome");
        String nome= s.nextLine();
        nomi.add(nome);
        System.out.println("Hai aggiunto " + nome);
    }
    
     static void cancellaNome(){
        System.out.println("inserisci il nome da cancellare");
        String nome= s.nextLine();
        if(nomi.contains(nome)){
            nomi.remove(nome);
        System.out.println("Hai cancellato " + nome);
        }else{
            System.out.println("il nome che vuoi eliminare non esiste");
        }
    }
    
      static void cercaNome(){
        System.out.println("inserisci il nome da cercare");
        String nome= s.nextLine();
         if(nomi.contains(nome)){
        System.out.println(nome + " esiste");
        }else{
            System.out.println("il nome che vuoi eliminare non esiste");
        }
    }
      
      static void visualizza(){
          //System.out.println(nomi);
          nomi.forEach(System.out::println);
      }
     
}
