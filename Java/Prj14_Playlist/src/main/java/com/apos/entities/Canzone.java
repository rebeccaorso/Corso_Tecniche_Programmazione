package com.apos.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="canzoni") //nome tabella 
public class Canzone {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; //chiave primaria della tabella
	
	private String titolo;
	private String cantante;
	private String genere;
	private int anno;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getCantante() {
		return cantante;
	}
	public void setCantante(String cantante) {
		this.cantante = cantante;
	}
	
	
	
}
