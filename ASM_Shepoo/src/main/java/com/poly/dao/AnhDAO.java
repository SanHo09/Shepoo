package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Anh;

public interface AnhDAO extends JpaRepository<Anh, Integer>{
	@Query("SELECT p FROM Anh p WHERE p.binhLuan.maBL=?1")
	List<Anh> findAllByImg(Integer maBL);
	
	@Query("DELETE Anh p WHERE p.binhLuan.maBL=?1")
	Void DeleteByID(Integer maBL);
}
