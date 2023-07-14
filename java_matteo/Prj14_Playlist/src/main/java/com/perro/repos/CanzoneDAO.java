package com.perro.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.perro.entities.Canzone;

public interface CanzoneDAO extends JpaRepository<Canzone, Integer>{

}
