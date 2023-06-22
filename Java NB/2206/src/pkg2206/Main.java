package pkg2206;

import java.util.ArrayList;

public class Main {

    
    
    public static void main(String[] args) {

        
        ArrayList<String> lista = new ArrayList();
        lista.add("eolo");
        lista.add("cucciolo");
        lista.add("mammolo");
        lista.add("brontolo");
        lista.add("pisolo");
        lista.add("trichecolo");
        
        System.out.println(lista);
        
        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i));
            
        }
        
        for (String nani : lista) {
            System.out.println(nani);
            
        }
       
        //funzione di callback
        lista.forEach(nani ->System.out.println(nani) );
        
        //method reference
        lista.forEach(System.out::println);
        
        lista.remove("eolo");
        //lista.remove(0);
        
          System.out.println(lista);
          
          
         lista.set(3, "dottolo");
         
         System.out.println(lista);
         
         stampaNani(lista);
        
    }// fine main
    
    
    
    static void stampaNani( ArrayList nani){
        
        nani.forEach(System.out::println);
    }

}
