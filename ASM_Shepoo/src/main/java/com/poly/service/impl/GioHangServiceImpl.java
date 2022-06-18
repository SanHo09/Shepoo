package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.dao.ChiTietGioHangDAO;
import com.poly.dao.GioHangDAO;
import com.poly.model.ChiTietGioHang;
import com.poly.model.GioHang;
import com.poly.service.GioHangService;
@Service
public class GioHangServiceImpl implements GioHangService{

	@Autowired
	GioHangDAO dao;

	@Autowired
	ChiTietGioHangDAO ctDao;
	@Override
	public Page<GioHang> findAll(Pageable page) {
		return dao.findAll(page);
	}

	@Override
	public GioHang findAllByNguoiDung(int maND) {
		return dao.findByMaND(maND);
	}

	@Override
	public GioHang create(GioHang gioHang) {
		// TODO Auto-generated method stub
		return dao.save(gioHang);
	}

	@Override
	public GioHang update(GioHang gioHang) {
		// TODO Auto-generated method stub
		return dao.save(gioHang);
	}

	

	@Override
	public void delete(GioHang gioHang) {
		dao.delete(gioHang);
		
	}

	@Override
	public Boolean checkExistsByUser() {
		
		return true;
	}

	@Override
	public void clear(GioHang gioHang) {
		// TODO Auto-generated method stub
		List<ChiTietGioHang> _listCTGH = ctDao.findAllBymaGH(gioHang.getMaGH());
		_listCTGH.forEach(i -> {
			ctDao.delete(i);
		});
	}

	

}
