package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.GioHang;

public interface GioHangService {
	public Page<GioHang> findAll(Pageable page);
	public GioHang findAllByNguoiDung(int maND);
	public GioHang create(GioHang gioHang);
	public GioHang update(GioHang gioHang);
	public GioHang clear(GioHang gioHang);
	public void delete(GioHang gioHang);
	public Boolean checkExistsByUser();
	
}
