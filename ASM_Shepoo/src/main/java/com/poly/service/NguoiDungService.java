package com.poly.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.model.NguoiDung;

public interface NguoiDungService {
	NguoiDung saveNguoiDung(NguoiDung nguoiDung);
	
	void deleteNguoiDung(NguoiDung nguoiDung);
	
	NguoiDung updateNguoiDung(NguoiDung nguoiDung);
	
	List<NguoiDung> findNguoiDungById(int id);
	
	boolean checkLogin(String username, String password);
	
	boolean existByUsername(String username);
	
	Page<NguoiDung> findNguoiDungByName(String keywords, Pageable pageable);
	
}
