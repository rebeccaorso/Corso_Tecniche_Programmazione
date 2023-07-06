package interfaccia;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class ComparatorePrezzo implements Comparator<Libro> {

	@Override
	public int compare(Libro libro1, Libro libro2) {

		return Double.compare(libro1.prezzo, libro2.prezzo);
	}

}

public class Libreria {

	public static void main(String[] args) {

		List<Libro> libri = new ArrayList<>();
		libri.add(new Libro(1, "Siddharta", 10.0));
		libri.add(new Libro(2, "Rapture", 15.0));
		libri.add(new Libro(3, "Alba Chiara", 9.5));
		libri.add(new Libro(4, "Zanna Bianca", 20.0));
		libri.add(new Libro(5, "Darksider", 13.3));

		// con stream scorro la collezione

//		Collections.sort(libri); 
		// the method sort(List<T>) in the type Collections is not applicable for the
		// arguments (List<Libro>)
//		Collections.sort(libri); // posso usare sort dopo avere implementato Comparable
//		System.out.println(libri);

//		ComparatorePrezzo cp= new ComparatorePrezzo();		

//		Comparator<Libro> cp = (libro1, libro2) 
//				-> Double.compare(libro1.prezzo, libro2.prezzo);

		Collections.sort(libri, (libro1, libro2) -> Double.compare(libro1.prezzo, libro2.prezzo)); // comparatore

		System.out.println(libri);

		libri.stream().sorted((libro1, libro2) -> Double.compare(libro1.prezzo, libro2.prezzo))
				.filter(l -> l.prezzo < 15).forEach(l -> System.out.println(l));
		
		Collections.sort(libri, (libro1, libro2) -> libro1.id - libro2.id);

	}// fine main

}
