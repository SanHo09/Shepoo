package com.poly.service;

import com.poly.model.ChiTietHoaDon;
import com.poly.model.HoaDon;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;

public interface chiTietHoaDonService {
	Page<ChiTietHoaDon> findAllByProduct(int maSP, Pageable page);
	Page<ChiTietHoaDon> findAllByMaHoaDon(int maHD, Pageable page);
	Page<ChiTietHoaDon> findAll(Pageable page);
	ChiTietHoaDon create(ChiTietHoaDon entity);
	void deleteById(int id);
	ChiTietHoaDon update(ChiTietHoaDon entity);
	boolean existsById(int id);
	
	
}
