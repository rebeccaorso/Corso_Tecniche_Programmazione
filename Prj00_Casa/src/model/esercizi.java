package model;

import java.util.Iterator;
import java.util.Scanner;

public class esercizi {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		
//		int num = 5;
//		double numD = (double)num;
//		
//		String s = (String)num;
//		
//		
//		Double x = null;
//		
		
		
		String s1 = new String("Ciao");
		String s2 = new String("Ciao");
		
//		if(s1 === s2) {
//			System.out.println("funziona");
//		}
		if(s1==s2) {
			System.out.println("funziona2");
		}
		if (s1.equals(s2)) {
			System.out.println("funziona3");
		}
		
		
		
		String s = (s1.equals(s2)) ? "funziona3" : "ciao";
		
		
//		for (int i = 1; i <=10; i++) {
//			System.out.println(i);
//		}
		
//		Calcolare la somma dei numeri da 1 a 100 utilizzando un ciclo "for":
		
//		int somma = 0;
//		
//		for(int i = 1; i<=100; i++) {
//			 somma = somma +i; /* somma +=i */
//		}
//		System.out.println("la somma è " + somma);
		
		
//		Stampare i numeri pari da 1 a 20 utilizzando un ciclo "for":
		
		for (int i = 2; i <= 20; i= i+=2) {
			System.out.println(i);
		}
		
//		Calcolare la somma dei numeri da 1 a 100 utilizzando un ciclo "while":
		
		int i = 1;
		int somma = 0;
		
		while(i <= 100) {
			somma +=i;
			i++;
		}
		System.out.println(somma);
		

//		Stampare i numeri pari da 1 a 20 utilizzando un ciclo "while":
		
		int j = 2;
		
		while (j <= 20) {
			System.out.println(j);
			j+=2;
		} 
		
		
		
//		Scrivi un programma Java che calcoli la somma di tutti i numeri pari compresi tra due 
//		numeri inseriti dall'utente. Utilizza il ciclo while per iterare attraverso i numeri compresi
//		nell'intervallo specificato e accumula la somma dei numeri pari. Alla fine, visualizza il 
//		risultato della somma.
		
		
		
		Scanner sca = new Scanner(System.in);
		System.out.println("Inserisci un numero");
		int numero1 = sca.nextInt();
		
		System.out.println("Inserisci un altro numero più grande del precedente");
		int numero2 = sca.nextInt();
		
		somma = 0;
//		
//		while (numero1 <= numero2) {
//			if(numero1 %2 == 0) {
//
//				somma +=numero1;
//
//			}
//			numero1++;
//
//		}
//		System.out.println(somma);
		
		
		
		
		
		if(numero1 > numero2) {

			while (numero2 <= numero1) {
				if(numero2 %2 == 0) {
					somma +=numero2;
				}
				numero2++;
			}
		} else {
			while (numero1 <= numero2) {
				if(numero1 %2 == 0) {
					somma +=numero1;
				}
				numero1++;

			}
		}
		System.out.println(somma);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
