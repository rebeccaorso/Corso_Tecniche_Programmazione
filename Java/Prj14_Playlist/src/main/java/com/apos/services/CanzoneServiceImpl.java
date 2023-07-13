package com.apos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apos.entities.Canzone;
import com.apos.repos.CanzoneDAO;

@Service
public class CanzoneServiceImpl implements CanzoneService{

	@Autowired
	private CanzoneDAO dao;
	
	@Override
	public List<Canzone> getCanzoni() {
		// TODO Auto-generated method stub
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
