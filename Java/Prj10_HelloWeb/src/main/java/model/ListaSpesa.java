package model;

import java.util.Iterator;

public class ListaSpesa {
	
	private ToDo[] elenco = new ToDo[10];
	
	public ToDo[] getElenco() {
		return elenco;
	}
	
	public void addToDo(ToDo t) {
		int pos = trovaPostoLibero();
		if(pos > -1)
		elenco[pos] = t;
	}
	
	private int trovaPostoLibero() {
		for(int i = 0; i < elenco.length; i++) {
			if(elenco[i]==null)
				return i;
		}
		return -1;
	}

	public void addToDo (ToDo t, int pos) {
		elenco[pos] = t;
	}
	
	public boolean disponibile(int pos) {
		if (elenco[pos] == null)
			return true;
		
		return false;
	}
	public String printToDo() {
		String s = "";
		for (ToDo toDo : elenco) {
			s += toDo + "\n";
			
		}
		return s;
	}
}


