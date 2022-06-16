package com.poly.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.ChiTietGioHangDAO;
import com.poly.model.ChiTietGioHang;
import com.poly.service.ChiTietGioHangService;

@Service
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
		return dao.findAllBymaGH(maGH);
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

	@Override
	public Optional<ChiTietGioHang> findByID(int maCTGH) {
		// TODO Auto-generated method stub
		return dao.findById(maCTGH);
	}
	

	

}
