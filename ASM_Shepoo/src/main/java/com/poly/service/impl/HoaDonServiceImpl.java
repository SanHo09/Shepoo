package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.HoaDonDAO;
import com.poly.model.HoaDon;
import com.poly.service.hoaDonService;
@Service
public class HoaDonServiceImpl implements hoaDonService{
	
	@Autowired
	HoaDonDAO dao;
	@Override
	public Page<HoaDon> findAllByUser(int username, Pageable page) {
		// TODO Auto-generated method stub
		
		return dao.findAllByUserId(username, page);
	}

	@Override
	public Page<HoaDon> findAll(Pageable page) {
		// TODO Auto-generated method stub
		return dao.findAll(page);
	}

	@Override
	public HoaDon create(HoaDon entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	@Override
	public HoaDon update(HoaDon entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public boolean existsById(int id) {
		// TODO Auto-generated method stub
		return dao.existsById(id);
	}

}
