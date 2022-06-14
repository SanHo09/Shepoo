package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.ChiTietGioHang;

public interface ChiTietGioHangDAO extends JpaRepository<ChiTietGioHang, Integer>{
	
	@Query("SELECT c FROM ChiTietGioHang c WHERE c.gioHang.maGH=?1")
	public List<ChiTietGioHang> findBymaGH(int maGH);
	
	
}
