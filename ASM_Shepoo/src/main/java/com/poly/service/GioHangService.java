package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.GioHang;

public interface GioHangService {
	public Page<GioHang> findAll(Pageable page);
	public GioHang findAllByNguoiDung(int maND);
	public GioHang create();
	public GioHang update();
	public GioHang clear();
	public void delete();
	public Boolean checkExistsByUser();
	
}
