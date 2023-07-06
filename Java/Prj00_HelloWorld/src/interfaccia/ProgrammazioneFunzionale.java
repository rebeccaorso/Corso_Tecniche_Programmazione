package interfaccia;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class ProgrammazioneFunzionale {
	public static void main(String[] args) {

		String[] arrMoto = { "yamaha", "kawasaki", "aprilia", "ducati", "bmw" };
//		List<String> moto = new ArrayList<>();
		List<String> moto = Arrays.asList(arrMoto);

		List<String> moto2 = new ArrayList<>(moto);
		moto2.add("ktm");

//		moto.add("ktm"); //non lo posso fare perchè List non è un oggetto concreto

		for (String elemento : moto) {
			System.out.println(elemento);
		}
		
		System.out.println("///////moto2");

		for (String elemento : moto2) {
			System.out.println(elemento);
		}
		
		Set<String> moto3 = new HashSet<>(moto2);
		Set<String> moto4 = new TreeSet<>(moto2);
		
		moto3.add("aprilia");
		
		System.out.println("/////////moto3");
		
		for (String elemento : moto3) {
			System.out.println(elemento);
		}
		
		System.out.println("/////////moto4");
		for (String elemento : moto4) {
			System.out.println(elemento);
		}
		
		System.out.println("//////////////approccio funzionale");
		
		moto3
			.stream()//trasformo in un flusso(stream)
			.filter(m-> m.length()>4)
			.filter(m-> m.endsWith("i"))
			.forEach(m->System.out.println(m)); //operazione terminale
		
	}// fine main

}
