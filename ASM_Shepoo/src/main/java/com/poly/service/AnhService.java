package com.poly.service;

import java.util.List;

import com.poly.model.Anh;

public interface AnhService {
	List<Anh> findAll();
	List<Anh> findAllByImg(Integer maBL);
	Anh findById(Integer id);
	Anh create(Anh entity);
	Anh update(Anh entity);
	void deleteById(Integer maBL);
}
