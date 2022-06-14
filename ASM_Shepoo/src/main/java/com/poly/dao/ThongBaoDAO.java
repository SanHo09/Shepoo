package com.poly.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.NguoiDung;
import com.poly.model.ThongBao;

public interface ThongBaoDAO extends JpaRepository<ThongBao,Integer> {
	@Query("Select o FROM ThongBao o where o.nguoidung.maND=?1")
	public ThongBao findByMaND(int MaND);
	@Query("Select o FROM ThongBao o")
	public Page<ThongBao> findAll(Pageable page);
	@Query("Select o FROM ThongBao o where o.maTB=?1")
	public ThongBao findByID(int id);
}