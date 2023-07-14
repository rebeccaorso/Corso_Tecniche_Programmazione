package com.perro.services;

import java.util.List;

import com.perro.entities.Canzone;

public interface CanzoneService {
	List<Canzone> getCanzoni();
	List<Canzone> getCanzoniByCantante(String cantante);
	Canzone getCanzoneById(int id);
}
