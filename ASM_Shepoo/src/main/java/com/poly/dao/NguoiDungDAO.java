package com.poly.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.NguoiDung;

public interface NguoiDungDAO  extends JpaRepository<NguoiDung, Integer> {
	@Query("SELECT o FROM NguoiDung o WHERE o.userName=?1 AND o.password=?2")
	public NguoiDung findByUsernameAndPassword(String username,String password);
	@Query("Select o FROM NguoiDung o where o.userName=?1")
	public NguoiDung findByUsername(String username);
	@Query("Update NguoiDung o set o.active=0 where o.maND=?1")
	public NguoiDung deleteById(NguoiDung entity);
	@Query("select o FROM NguoiDung o where o.active=1")
	public Page<NguoiDung> findAllByActive(Pageable page);
	//Sủa lại tên NguoiDung trong cậu lênh query
}