package com.poly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


import com.poly.model.ThongBao;

public interface ThongBaoService {
	Page<ThongBao> findAll(Pageable page);
	ThongBao findById(int id);
	ThongBao create(ThongBao entity);
	ThongBao update(ThongBao entity);
	void deleteById(int id);
	ThongBao findByMaND(int maND);
}