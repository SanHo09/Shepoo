package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.poly.dao.ChiTietGioHangDAO;
import com.poly.model.ChiTietGioHang;
import com.poly.service.ChiTietGioHangService;

public class ChiTietGioHangServiceImpl implements ChiTietGioHangService{

	@Autowired
	ChiTietGioHangDAO dao;

	@Override
	public List<ChiTietGioHang> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<ChiTietGioHang> findAllByGioHang(int maGH) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChiTietGioHang create(ChiTietGioHang ctgh) {
		// TODO Auto-generated method stub
		return dao.save(ctgh);
	}

	@Override
	public ChiTietGioHang update(ChiTietGioHang ctgh) {
		// TODO Auto-generated method stub
		return dao.save(ctgh);
	}

	@Override
	public void delete(ChiTietGioHang ctgh) {
		// TODO Auto-generated method stub
		dao.delete(ctgh);
	}
	

	

}
