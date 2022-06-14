package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.LoaiSanPham;

public interface LoaiSanPhamService {
	LoaiSanPham saveLoaiSanPham(LoaiSanPham lsp);
	
	void deleteLoaiSanPham(LoaiSanPham lsp);
	
	LoaiSanPham updateLoaiSanPham(LoaiSanPham lsp);
	
	LoaiSanPham findLoaiSanPhamById(int id);
	
	Page<LoaiSanPham> findLoaiSanPhamByName(String keywords, Pageable pageable);
}
