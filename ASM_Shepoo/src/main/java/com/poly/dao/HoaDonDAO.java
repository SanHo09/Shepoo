package com.poly.dao;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.HoaDon;



public interface HoaDonDAO extends JpaRepository<HoaDon, Integer>{
	@Query("SELECT o FROM HoaDon o WHERE o.nguoidung.maND=?1")
	Page<HoaDon> findAllByUserId(int username, Pageable page);
}
