package com.poly.service;

import java.util.List;

import com.poly.model.ChiTietGioHang;

public interface ChiTietGioHangService {
	public List<ChiTietGioHang> findAll();
	public List<ChiTietGioHang> findAllByGioHang(int maGH);
	public ChiTietGioHang create(ChiTietGioHang ctgh);
	public ChiTietGioHang update(ChiTietGioHang ctgh);
	public void delete(ChiTietGioHang ctgh);
	
}
