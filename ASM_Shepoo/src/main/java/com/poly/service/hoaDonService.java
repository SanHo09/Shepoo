package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.HoaDon;

public interface hoaDonService {
	Page<HoaDon> findAllByUser(int username, Pageable page); 
	Page<HoaDon> findAll(Pageable page);
	HoaDon create(HoaDon entity);
	void deleteById(int id);
	HoaDon update(HoaDon entity);
	boolean existsById(int id);
	
	
}
