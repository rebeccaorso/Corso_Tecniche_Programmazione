package pkg20.giugno;

public class Giugno {

    
    public static void main(String[] args) {

   
    
//      int risultato = somma(1,2);  
//        System.out.println(risultato);
        
        
        
        
        //vero se un numero è divisibile per un altro con un resto zero
        
       
        String[] animali = {"cane", "gatto", "pesce", "tricheco"};
        leggiArray(animali);
        
        String[] arrString = creaArray("cane", "gatto", "pesce");
        leggiArray(arrString);
        
    } //fine main
    
    // METODI
    
    //overload stesso nome ma diverso numero /o tipo di parametri
    static int somma(int a, int b){
        return a+b;
    }    
        
    static int somma( int a, int b, int c){
        return a+b+c;
        
    }
        
    static double somma(double a, double b){
        return a+b;
    }    
        
        static boolean isDivisibile(int x, int y) {
            return (x%y==0);
        }
           
         
     //metodo che prende in input un array e stampa i valori    
    static void leggiArray(String[] arr){
        for(String valori : arr) {
            System.out.println(valori);
        }
    
    }
    
    static String[] creaArray(String uno, String due, String tre){
        String[] giorgio = {uno, due, tre};
        return giorgio;
    }
        
    // funzioni ricorsive -- richiama se stesso    
    // le funzioni ricorsive sono tutte composte da:
    //1. calcolo da ritornare (da mettere nel return)
    //2. una condizione di uscita 
    
    
//    static void sempre(){
//    sempre();
//    }
    
    
    //fattoriale
    static long fattoriale(long x){
        if(x==0){ //2.
            return 1;
        }else{
            return x*fattoriale(x-1); //punto 1
        }
    }
}



    


