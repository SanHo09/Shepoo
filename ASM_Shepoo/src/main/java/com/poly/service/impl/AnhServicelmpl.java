package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.AnhDAO;
import com.poly.model.Anh;
import com.poly.service.AnhService;
@Service
public class AnhServicelmpl implements AnhService{
	@Autowired
	AnhDAO dao;

	@Override
	public List<Anh> findAll() {
		return dao.findAll();
	}


	@Override
	public Anh findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public Anh create(Anh entity) {
		return dao.save(entity);
	}

	@Override
	public Anh update(Anh entity) {
		return dao.save(entity);
	}

	@Override
	public void deleteById(Integer maBL) {
		dao.deleteById(maBL);
	}


	@Override
	public List<Anh> findAllByImg(Integer maBL) {
		return dao.findAllByImg(maBL);
	}
}
