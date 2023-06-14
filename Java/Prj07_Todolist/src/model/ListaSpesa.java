package model;

public class ListaSpesa {
	
	private ToDo[] elenco = new ToDo[10];
	
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
