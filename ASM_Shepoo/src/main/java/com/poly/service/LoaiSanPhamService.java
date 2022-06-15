package com.poly.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.LoaiSanPham;

public interface LoaiSanPhamService {
	LoaiSanPham saveLoaiSanPham(LoaiSanPham lsp);
	
	void deleteLoaiSanPham(LoaiSanPham lsp);
	
	LoaiSanPham updateLoaiSanPham(LoaiSanPham lsp);
	
	LoaiSanPham findLoaiSanPhamById(int maLSP);
	
	List<LoaiSanPham> findByAll();
	
	Page<LoaiSanPham> findLoaiSanPhamByName(String keywords, Pageable pageable);
}
