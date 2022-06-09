package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.GioHang;

public interface GioHangService {
	public Page<GioHang> findAll(Pageable page);
	
}
