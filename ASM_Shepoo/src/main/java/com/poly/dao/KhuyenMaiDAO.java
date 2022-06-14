package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.KhuyenMai;

public interface KhuyenMaiDAO extends JpaRepository<KhuyenMai, Integer>{
	
	@Query("SELECT k FROM KhuyenMai k WHERE k.nguoiDung.maND =?1")
	public List<KhuyenMai> findByMaND(int maND);
	
	@Query("SELECT k FROM KhuyenMai k WHERE k.sanPham.maSP =?1")
	public List<KhuyenMai> findByMaSP(int maSP);
	
	@Query("SELECT k FROM KhuyenMai k WHERE k.nguoiDung.maND =?1 AND k.sanPham.maSP =?2")
	public List<KhuyenMai> findByNguoiDungAndSanPham(int maND, int maSP);
	
	
	
}
