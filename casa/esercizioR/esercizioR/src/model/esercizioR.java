package model;

import java.util.Scanner;

public class esercizioR {

	public static void main(String[] args) {
		
//		Creare un programma che permetta all'utente di scegliere la lunghezza dell'arrey di tipi primitivi, 
//		e di riempirlo con valori a piacere.
//		Il programma deve continuare a richiedere valori all'utente finchè questo non digits la parola "fine".
//		Gestire l'eccezione in cui l'utente non digita fine e mette puìiù valori di quelli ammessi nell'arrey usando un metodo con try e catch fuori dal main e poi richiamato.
//		In questo caso svuotare l'array e fare inserire di nuovo i valori.		
		
		
		
		
//		Rebecca
		/*
		Scanner s = new Scanner(System.in);
		
		System.out.print("Inserisci la lunghezza dell'array: ");
		int lunghezza = s.nextInt();	
		int[] y = new int[lunghezza];
		int i = 0;
		boolean uscita = false;
		
		while(uscita) {
			System.out.print("Inserisci un valore: ");
			String input = s.nextLine();
			if(input.equals("fine")) {
				uscita = true;
			}else {
				y[i] = Integer.parseInt(input);
				i++;
				if(i >= y.length) {
					System.out.print("Hai superato la lunghezza dell'array. Ricomincia");
					 y = new int[lunghezza];
				}
			}
		}*/
		
		
		Scanner s = new Scanner(System.in);
		
		System.out.print("Inserisci la lunghezza dell'array: ");
		int lunghezza = s.nextInt();	
		int[] y = new int[lunghezza];
		int i = 0;
		boolean uscita = false;
		
		while(!uscita) {
			System.out.print("Inserisci un valore: ");
			s = new Scanner(System.in);
			String input = s.nextLine();
			if(input.equals("fine")) {
				uscita = true;
			}else {
				try {
					y[i] = Integer.parseInt(input);
					i++;
				}catch(Exception e) {
					System.out.println("Hai superato la lunghezza dell'array. Ricomincia");
					y = new int[lunghezza];
					i=0;
				}
			}
		}

		for(i = 0; i < y.length; i++) {
			System.out.println(y[i]);
		}
		

	}

}
