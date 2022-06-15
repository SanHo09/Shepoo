package com.poly.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


import com.poly.model.NguoiDung;
import com.poly.model.ThongBao;

public interface NguoiDungService {
	Page<NguoiDung> findAll(Pageable page);
	List<NguoiDung> findAllByActive();
	Optional<NguoiDung> findById(Integer id);
	NguoiDung findByUsername(String username);
	NguoiDung findByUsernameAndPassword(String username,String password);
	NguoiDung create(NguoiDung entity);
	NguoiDung update(NguoiDung entity);
	NguoiDung deleteById(NguoiDung entity);
}
