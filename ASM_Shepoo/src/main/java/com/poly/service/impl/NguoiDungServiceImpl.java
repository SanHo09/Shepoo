package com.poly.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.model.NguoiDung;
import com.poly.service.NguoiDungService;
import com.poly.dao.NguoiDungDAO;
@Service
public class NguoiDungServiceImpl implements NguoiDungService {
	@Autowired
	NguoiDungDAO dao;

	
	@Override
	public Optional<NguoiDung> findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public NguoiDung findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername(username);
	}

	@Override
	public NguoiDung findByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		return dao.findByUsernameAndPassword(username, password);
	}

	@Override
	public NguoiDung create(NguoiDung user) {
		user.setActive(true);
		user.setDiaChi("TP HCM");
		user.setEmail("nguoidung@gmail.com");
		user.setGioiTinh(false);
		user.setImage(null);
		user.setNgaySinh("2000-10-22");
		user.setTenShop(null);
		user.setVaiTro(false);
		user.setSdt("0912345678");
		return dao.save(user);
	}

	@Override
	public NguoiDung update(NguoiDung entity) {
		// TODO Auto-generated method stub
		return  dao.save(entity);
	}

	@Override
	public NguoiDung deleteById(NguoiDung entity) {
		// TODO Auto-generated method stub
		return  dao.deleteById(entity);
	}

	@Override
	public Page<NguoiDung> findAll(Pageable page) {
		// TODO Auto-generated method stub
		return dao.findAll(page);
	}

	@Override
	public List<NguoiDung> findAllByActive() {
		// TODO Auto-generated method stub
		return dao.findAllByActive();
	}

	@Override
	public NguoiDung findByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}
}
