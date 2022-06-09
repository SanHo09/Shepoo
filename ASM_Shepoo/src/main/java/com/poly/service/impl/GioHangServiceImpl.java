package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.dao.GioHangDAO;
import com.poly.model.GioHang;
import com.poly.service.GioHangService;

public class GioHangServiceImpl implements GioHangService{

	@Autowired
	GioHangDAO dao;

	@Override
	public Page<GioHang> findAll(Pageable page) {
		return dao.findAll(page);
	}

}
