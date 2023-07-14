package com.perro.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.perro.entities.Canzone;
import com.perro.services.CanzoneService;

@RestController
@RequestMapping("api")
public class CanzoniRest {
	
	@Autowired
	private CanzoneService service;
	
	@GetMapping("canzoni")
	List<Canzone> getCanzoni(){
		return service.getCanzoni();
	}
	
}
