package com.perro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perro.entities.Canzone;
import com.perro.repos.CanzoneDAO;

@Service
public class CanzoneServiceImpl implements CanzoneService {
	
	@Autowired
	private CanzoneDAO dao;

	@Override
	public List<Canzone> getCanzoni() {
		
		return dao.findAll();
	}

	@Override
	public List<Canzone> getCanzoniByCantante(String cantante) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Canzone getCanzoneById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
