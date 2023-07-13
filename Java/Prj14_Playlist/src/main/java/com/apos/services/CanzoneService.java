package com.apos.services;

import java.util.List;

import com.apos.entities.Canzone;

public interface CanzoneService {

	List<Canzone> getCanzoni();
	List<Canzone> getCanzoniByCantante(String cantante);
	Canzone getCanzoneById(int id);
}
