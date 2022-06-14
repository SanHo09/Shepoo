package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.SanPham;

public interface SanPhamService {
	SanPham saveSanPham(SanPham sp);
	
	void deleteSanPham(SanPham sp);
	
	SanPham updateSanPham(SanPham sp);
	
	SanPham findSanPhamById(int id);
	
	Page<SanPham> findSanPhamByName(String keywords, Pageable pageable);
}
