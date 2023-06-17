package model;

import java.util.Random;

public class esercizioArrayAula {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
        Random r = new Random();  
        

        
        int casuale = r.nextInt(1,21);
        System.out.println("Il numero generato da 1 a 20 e' " + casuale);
        
       
        int[] arrCasuali = new int[10]; 
        for (int i = 0; i < arrCasuali.length; i++) {
            arrCasuali[i] = r.nextInt(1,11);
        	System.out.println(arrCasuali[i]);
        }

        
//        for(int valore: arrCasuali){
//
//        	if(casuale == valore) {
//        		System.out.println("Il valore " + casuale + " è contenuto nell'array");
//        	}
//        }
        
        
        for (int i = 0; i < arrCasuali.length; i++ ) {
        	if(casuale == arrCasuali[i]) {
        		System.out.println("Il valore " + casuale + " è contenuto nell'array alla posizione " + i);
        	}
        
        }
        		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
