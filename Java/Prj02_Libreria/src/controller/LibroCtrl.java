package controller;

import model.Libro;

public class LibroCtrl {
	
	//proprietà
	public Libro[] scaffale = new Libro[100];
	
	//metodi - CRUD
	//create
	public void addLibro(int pos, Libro l) {
		scaffale[pos] = l;
	}
	
	//read
	public Libro getLibroByPosizione(int pos) {
		return scaffale[pos];
	}
	
	//update
	public void updateLibro(int pos,Libro libro) {
		scaffale[pos] =  libro;
	}
	
	public Libro[] getAll() {
		return scaffale;
	}
	
	//delete
	public void deleteLibro (int pos) {
		scaffale[pos] = null;
	}
}

