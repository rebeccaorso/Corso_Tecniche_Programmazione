package controller;

import model.Bevanda;
import model.Caffe;
import model.Cappuccino;
import model.Cioccolata;
import model.The;

public class BevandeController {

	public static boolean checkMoney(double money, double price) {
		return money >= price;
// 		if (money >= price) {
//			return true;
//		}
//		return false;
	}

	public static Bevanda getBevanda(String codice) {

		Bevanda b = null;

		switch (codice) {
		case "A1":
			b = new Caffe(0.5);
			break;
		case "A2":
			b = new Cioccolata(0.45);
			break;
		case "A3":
			b = new Cappuccino(0.75);
			break;
		case "A4":
			b = new The(0.6);
			break;

		default:
			System.out.println("Scelta non disponibile");
			break;
		}

		return b;
	}

}
