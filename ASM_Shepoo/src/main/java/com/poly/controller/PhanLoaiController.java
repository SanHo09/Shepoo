package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.LoaiSanPham;
import com.poly.model.SanPham;
import com.poly.service.SanPhamService;
import com.poly.service.impl.BinhLuanServicelmpl;
import com.poly.service.impl.LoaiSanPhamImpl;
import com.poly.service.impl.NguoiDungServiceImpl;
import com.poly.service.impl.SanPhamServiceImpl;

@Controller
@RequestMapping("/product/category")
public class PhanLoaiController {
	
	@Autowired
	SanPhamServiceImpl sanPhamService;

	@Autowired
	NguoiDungServiceImpl ndImpl;
	
	@Autowired
	BinhLuanServicelmpl binhLuanServiceImpl;
	
	@Autowired
	LoaiSanPhamImpl loaiSanPhamService;
	
	@GetMapping("/category")
	public String doGetIndex(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 10);
		Page<SanPham> pages = sanPhamService.findAll(pageable);
		List<LoaiSanPham> _list = loaiSanPhamService.findByAll();
		model.addAttribute("loaiSanPhamList",_list);
		model.addAttribute("sanPhamPage", pages);
		return "/product/category";
	}
	
	@GetMapping("/classify/{maLSP}")
	public String classification(Model model,@PathVariable("maLSP") int maLSP, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 10);
		Page<SanPham> pages = sanPhamService.findSanPhamByLSP(maLSP, pageable);
		List<LoaiSanPham> _list = loaiSanPhamService.findByAll();
		model.addAttribute("loaiSanPhamList",_list);
		model.addAttribute("sanPhamPage", pages);
		return "/product/category";
	}
	
	
}
