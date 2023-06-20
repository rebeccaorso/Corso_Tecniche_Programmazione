package pkg0620.esarraylist;

import java.util.ArrayList;
import java.util.Arrays;


public class EsArrayList {

    
    public static void main(String[] args) {
        
        ArrayList<Character> lettere = new ArrayList();
        
        lettere.add('a');
        lettere.add('b');
        lettere.add('c');
        
        System.out.println(lettere);
        
        lettere.add(0, 'd');
        
        System.out.println(lettere);
        
        System.out.println("elemento in posizione 2 " + lettere.get(2));
        
            System.out.println("dimensione "+lettere.size()); //dimensione arraylist
            
            for (int i = 0; i < lettere.size(); i++) {
                System.out.println(lettere.get(i));
        }
            
            for (Character caratteri : lettere) {
                System.out.println(caratteri);
            }
            
          //funzione di callback
        lettere.forEach( /* si mette una funzione */ caratteri ->System.out.println(caratteri));
        
        lettere.forEach(System.out::println); // method reference
        
        
        ////////////////////////
        System.out.println(lettere.contains('a')); //true se esiste
        
        System.out.println("è vuoto? " + lettere.isEmpty());
        
        ///////////////////////////////
        Character[] c={'x', 'y', 'z'};
        
        //trasformo un array in un array dinamico
        ArrayList<Character> lettere2= new ArrayList(Arrays.asList(c)); 
        
        lettere2.add('w');
        
        for (Character car : lettere2) {
            System.out.println(car);
        }
        
        lettere2.forEach(elemento->System.out.println(elemento));
        
        
        lettere2.forEach(System.out::println);
        
        
        lettere2.set(0,'a');
        System.out.println(lettere2);
        
        lettere2.remove(2);
        System.out.println(lettere2);
        
        /*
        .add() aggiunge un elemento in coda
        .add(0, x) aggiunge x in prima posizione
        .remove(i) rimuovo l'elemento alla posizione i
        .size() ritorna dimensione di ArrayList
        .get(i) ritorna l'elemento all'indice i
        .set(i, a) assegna il valore a nella posizione i
        .isEmpty() controlla se l'arraylist è vuoto
        .contains(x) controlla se x è contenuto nell'array
        
        */
        
        
        ArrayList misto = new ArrayList();
        
        misto.add(1);
        misto.add("ciao");
        misto.add(true);
        misto.add(3.14);
        
        System.out.println(misto);
        
        for (Object valore : misto) {
            System.out.println(valore);
        }
        
        misto.forEach(valore ->System.out.println(valore));
        
        misto.forEach(System.out::println);
      
        
        stampa(misto);
        

    } // main
    
    static void stampa(ArrayList parole){
        for (Object val : parole) {
            System.out.println(val);
        }
    }

}
