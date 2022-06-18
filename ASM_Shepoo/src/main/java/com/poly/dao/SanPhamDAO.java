package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.SanPham;


public interface SanPhamDAO extends JpaRepository<SanPham, Integer>{
	@Query("SELECT sp FROM SanPham sp WHERE sp.maSP = ?1 and sp.active = true")
	SanPham findSanPhamById(int id);
	
	
	@Query("SELECT sp FROM SanPham sp where sp.tenSP like %?1%")
	Page<SanPham> findSanPhamByName(String keywords, Pageable pageable);
	
	@Query("SELECT sp FROM SanPham sp WHERE sp.active = true")
	Page<SanPham> findAllSanPham(Pageable pageable);
	
	@Query("SELECT sp FROM SanPham sp WHERE sp.active = true AND sp.loaiSanPham.maLSP =?1")
	Page<SanPham> findAllSanPhamByLSP(int maLSP,Pageable pageable);
}
