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
		return dao.findByMaND(maND);
	}

	@Override
	public GioHang create(GioHang gioHang) {
		// TODO Auto-generated method stub
		return dao.save(gioHang);
	}

	@Override
	public GioHang update(GioHang gioHang) {
		// TODO Auto-generated method stub
		return dao.save(gioHang);
	}

	@Override
	public GioHang clear(GioHang gioHang) {
		// TODO Auto-generated method stub
		return dao.save(gioHang);
	}

	@Override
	public void delete(GioHang gioHang) {
		dao.delete(gioHang);
		
	}

	@Override
	public Boolean checkExistsByUser() {
		
		return true;
	}

	

}
