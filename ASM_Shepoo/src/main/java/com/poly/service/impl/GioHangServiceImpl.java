package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.GioHangDAO;
import com.poly.model.GioHang;
import com.poly.service.GioHangService;
@Service
public class GioHangServiceImpl implements GioHangService{

	@Autowired
	GioHangDAO dao;

	@Override
	public Page<GioHang> findAll(Pageable page) {
		return dao.findAll(page);
	}

	@Override
	public GioHang findAllByNguoiDung(int maND) {
		return null;
	}

	@Override
	public GioHang create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GioHang update() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GioHang clear() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Boolean checkExistsByUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
