package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.GioHang;

public interface GioHangDAO extends JpaRepository<GioHang, Integer> {
	
	@Query("SELECT g FROM GioHang g WHERE g.nguoiDung.maND =?1")
	public GioHang findByMaND(int maNG);
	
}
