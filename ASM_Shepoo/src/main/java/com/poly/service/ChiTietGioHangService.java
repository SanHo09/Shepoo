package com.poly.service;

import com.poly.model.ChiTietGioHang;

public interface ChiTietGioHangService {
	public void findAll();
	public void findAllByGioHang();
	public ChiTietGioHang create();
	public ChiTietGioHang update();
	public ChiTietGioHang delete();
	public Boolean existInGioHang();
}
