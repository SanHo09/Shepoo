package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.poly.dao.NguoiDungDAO;
import com.poly.model.NguoiDung;
import com.poly.service.NguoiDungService;

public class NguoiDungImpl implements NguoiDungService{
	@Autowired
	NguoiDungDAO dao;

	@Override
	public NguoiDung saveNguoiDung(NguoiDung nguoiDung) {
		return dao.save(nguoiDung);
	}

	@Override
	public void deleteNguoiDung(NguoiDung nguoiDung) {
		dao.delete(nguoiDung);
	}

	@Override
	public NguoiDung updateNguoiDung(NguoiDung nguoiDung) {
		return dao.save(nguoiDung);
	}

	@Override
	public List<NguoiDung> findNguoiDungById(int id) {
		return dao.findNguoiDungById(id);
	}

	@Override
	public Page<NguoiDung> findNguoiDungByName(String keywords, Pageable pageable) {
		return dao.findNguoiDungByName(keywords, pageable);
	}

	@Override
	public boolean checkLogin(String username, String password) {
		if(dao.checkLogin(username, password) != null)
		{
			return true;
		}
		return false;
	}

	@Override
	public boolean existByUsername(String username) {
		if(dao.existByUsername(username) != null)
		{
			return true;
		}
		return false;
	}

}
