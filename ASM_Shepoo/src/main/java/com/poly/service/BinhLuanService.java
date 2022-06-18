package com.poly.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.BinhLuan;

public interface BinhLuanService {
	List<BinhLuan> findAll();
	List<BinhLuan> findAllByCustomer(Integer maND);
	List<BinhLuan> findAllByMaSP(Integer maSP);
	BinhLuan findById(Integer maBL);
	BinhLuan create(BinhLuan entity);
	BinhLuan update(BinhLuan entity);
	void deleteById(Integer maBL);

	Integer countBinhLuanByMaSP(Integer maSP);
}
