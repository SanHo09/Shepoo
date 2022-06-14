package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.ChiTietHoaDonDAO;
import com.poly.model.ChiTietHoaDon;
import com.poly.service.chiTietHoaDonService;
@Service
public class ChiTietHoaDonServiceImpl implements chiTietHoaDonService{
	@Autowired
	ChiTietHoaDonDAO dao;
	

	@Override
	public Page<ChiTietHoaDon> findAllByMaHoaDon(int maHD, Pageable page) {
		// TODO Auto-generated method stub
		return dao.findAllByHoaDon(maHD, page);
	}

	@Override
	public Page<ChiTietHoaDon> findAll(Pageable page) {
		// TODO Auto-generated method stub
		return dao.findAll(page);
	}

	@Override
	public ChiTietHoaDon create(ChiTietHoaDon entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	@Override
	public ChiTietHoaDon update(ChiTietHoaDon entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public boolean existsById(int id) {
		// TODO Auto-generated method stub
		return dao.existsById(id);
	}

}
