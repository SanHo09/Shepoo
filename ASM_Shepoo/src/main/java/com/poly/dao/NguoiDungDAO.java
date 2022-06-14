package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.NguoiDung;

public interface NguoiDungDAO extends JpaRepository<NguoiDung, Integer>{
	@Query("SELECT nd FROM NguoiDung nd WHERE nd.id = ?1 and nd.active = true")
	List<NguoiDung> findNguoiDungById(int id);
	
	@Query("SELECT nd FROM NguoiDung nd")
	List<NguoiDung> findAllNguoiDung();
	
	@Query("SELECT nd FROM NguoiDung nd where nd.name like %?1%")
	Page<NguoiDung> findNguoiDungByName(String keywords, Pageable pageable);
	
	@Query("SELECT nd FROM NguoiDung nd WHERE nd.username = ?1 and nd.password = ?2")
	NguoiDung checkLogin(String username, String password);
	
	@Query("SELECT nd FROM NguoiDung nd WHERE nd.username =?1")
	NguoiDung existByUsername(String username);
}
