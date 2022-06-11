package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.dao.ThongBaoDAO;
import com.poly.model.ThongBao;
import com.poly.service.ThongBaoService;

public class ThongBaoServiceImpl implements ThongBaoService {
	@Autowired
	ThongBaoDAO dao;

	@Override
	public Page<ThongBao> findAll(Pageable page) {
		// TODO Auto-generated method stub
		return findAll(page);
	}

	@Override
	public ThongBao findById(int id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public ThongBao create(ThongBao entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public ThongBao update(ThongBao entity) {
		// TODO Auto-generated method stub
		return dao.save(entity);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	@Override
	public ThongBao findByMaND(int maND) {
		// TODO Auto-generated method stub
		return dao.findByMaND(maND);
	}


}
