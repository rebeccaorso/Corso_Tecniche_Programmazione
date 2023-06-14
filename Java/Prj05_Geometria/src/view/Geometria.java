package view;

import model.Punto;
import model.Segmento;
import model.Triangolo;
import model.Rettangolo;
import model.Quadrato;

public class Geometria {

	public static void main(String[] args) {
		
		Punto a = new Punto(2, 2);
		Punto b = new Punto(6, 2);
		Punto c = new Punto(2, 5);
		
		Segmento ab = new Segmento (a, b);
		Segmento ac = new Segmento (a, c);
		Segmento bc = new Segmento (b, c);
		
		System.out.println(a);
		System.out.println(b);
		
		System.out.println(ab);

		/*System.out.println(a.x);//ctrl alt freccia giu
		System.out.println(a.y);
		
		System.out.println(b.x);
		System.out.println(b.y);*/
		
		System.out.println(ab.calcolaLunghezza());
		System.out.println(ac.calcolaLunghezza());
		System.out.println(bc.calcolaLunghezza());
		
		Triangolo t1 = new Triangolo(a, b, c);
		System.out.println(t1.calcolaPerimetro());
		System.out.println(t1.calcolaArea());
		
		Rettangolo r1 = new Rettangolo(ab, ac);
		System.out.println(r1.calcolaPerimetro());
		System.out.println(r1.calcolaArea());
		
		Quadrato q1 = new Quadrato(ab);
		System.out.println(q1.calcolaPerimetro());
		System.out.println(q1.calcolaArea());

	}

}
