package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.SanPhamDAO;
import com.poly.model.SanPham;
import com.poly.service.SanPhamService;
@Service
public class SanPhamServiceImpl implements SanPhamService{
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
		dao.save(sp);
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

	

	@Override
	public Page<SanPham> findAll(Pageable page) {
		return dao.findAllSanPham(page);
	}

	@Override
	public List<SanPham> findAlltoList() {
		return dao.findAll();
	}

}
