package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.dao.SanPhamDAO;
import com.poly.model.SanPham;
import com.poly.service.SanPhamService;

public class SanPhamImpl implements SanPhamService{
	@Autowired
	SanPhamDAO dao;
	

	@Override
	public SanPham saveSanPham(SanPham sanPham) {
		return dao.save(sanPham);
	}

	@Override
	public void deleteSanPham(SanPham sanPham) {
		SanPham sp = dao.findSanPhamById(sanPham.getMaSP());
		sp.setActive(false);
	}

	@Override
	public SanPham updateSanPham(SanPham SanPham) {
		return dao.save(SanPham);
	}

	@Override
	public SanPham findSanPhamById(int id) {
		return dao.findSanPhamById(id);
	}

	@Override
	public Page<SanPham> findSanPhamByName(String keywords, Pageable pageable) {
		return dao.findSanPhamByName(keywords, pageable);
	}

}
