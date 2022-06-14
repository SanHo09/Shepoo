package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.LoaiSanPham;
import com.poly.model.SanPham;


public interface LoaiSanPhamDAO extends JpaRepository<LoaiSanPham, Integer>{
	@Query("SELECT lsp FROM LoaiSanPham lsp WHERE lsp.id = ?1")
	LoaiSanPham findLoaiSanPhamById(int id);
	
	@Query("SELECT lsp FROM LoaiSanPham lsp")
	List<LoaiSanPham> findAllLoaiSanPham();
	
	@Query("SELECT lsp FROM LoaiSanPham lsp where lsp.name like %?1%")
	Page<LoaiSanPham> findLoaiSanPhamByName(String keywords, Pageable pageable);
}
