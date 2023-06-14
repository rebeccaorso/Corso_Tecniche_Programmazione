package dadi;

import java.util.Random;

public class Dadi {

    public static void main(String[] args) {

        //tirare due dadi se viene entrambi 6 vinci
        Random r = new Random();
        
        int numero1 = r.nextInt(1, 7);
        System.out.println(numero1);
        
        int numero2 = r.nextInt(1,7);
        System.out.println(numero2);
       
        if (numero1==6 && numero2==6){ //doppio = confronta numeri
            System.out.println("Hai vinto!");
        }else{
            System.out.println("Hai perso!");
        }
                 
    }  
    

   
    }
    


