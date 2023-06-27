package personatest;

import java.util.Scanner;


public class PersonaTest {

    
    
    
    public static void main(String[] args) {

        Persona persona1 = new Persona();
        
//        persona1.cognome="Rossi";
//        persona1.nome="Mario";
//        persona1.eta=20;
//        persona1.maggiorenne=true;
        
             persona1.setNome("Mario");
             persona1.setCognome("Rossi");
             persona1.setEta(20);
             persona1.setMaggiorenne(true);
             
             System.out.println("Come si chiama la persona");
             System.out.println(persona1.getNome());
             


//        persona1.info();
        System.out.println(persona1.isMaggiorenne());
        
//        Scanner s= new Scanner(System.in);
//        System.out.println("Inserisci il nome");
//        String nome = s.nextLine();
//        System.out.println("Inserisci il cognome");
//        String cognome = s.nextLine();
//        System.out.println("Inserisci l'eta");
//        int eta = s.nextInt();
//        persona1.info();
        
        
        Persona persona2= new Persona("Aldo", "Silente", 30);
//        persona2.info();
        
//        Persona persona3= new Persona("Giuseppe", "Verdi");
//        persona3.eta=99;
        
        
//        System.out.println(persona3);
////        persona3.info();
//         persona1.equals(persona3);
//         
//         //persona1 è uguale a persona3
//         System.out.println(persona1.equals(persona3));
        
    }//fine main

}
