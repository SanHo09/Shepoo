package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.LoaiSanPhamDAO;
import com.poly.model.LoaiSanPham;
import com.poly.service.LoaiSanPhamService;
@Service
public class LoaiSanPhamImpl implements LoaiSanPhamService{
	@Autowired
	LoaiSanPhamDAO dao;
	

	@Override
	public LoaiSanPham saveLoaiSanPham(LoaiSanPham lsp) {
		return dao.save(lsp);
	}

	@Override
	public void deleteLoaiSanPham(LoaiSanPham lsp) {
		dao.delete(lsp);
	}

	@Override
	public LoaiSanPham updateLoaiSanPham(LoaiSanPham lsp) {
		return dao.save(lsp);
	}

	@Override
	public LoaiSanPham findLoaiSanPhamById(int id) {
		return dao.findLoaiSanPhamById(id);
	}

	@Override
	public Page<LoaiSanPham> findLoaiSanPhamByName(String keywords, Pageable pageable) {
		return dao.findLoaiSanPhamByName(keywords, pageable);
	}
}
