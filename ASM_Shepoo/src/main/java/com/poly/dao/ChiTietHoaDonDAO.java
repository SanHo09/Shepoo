package com.poly.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.ChiTietHoaDon;
import com.poly.model.SanPham;

public interface ChiTietHoaDonDAO extends JpaRepository<ChiTietHoaDon, Integer>{	
	@Query("SELECT o FROM ChiTietHoaDon o WHERE o.hoadon.maHD=?1")
	Page<ChiTietHoaDon> findAllByHoaDon(int maHD, Pageable page); 
}
