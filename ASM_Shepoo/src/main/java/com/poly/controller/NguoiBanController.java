package com.poly.controller;

import java.io.File;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.SanPhamDAO;
import com.poly.model.LoaiSanPham;
import com.poly.model.SanPham;
import com.poly.service.LoaiSanPhamService;
import com.poly.service.SanPhamService;



@Controller
@RequestMapping("/admin/")
public class NguoiBanController {
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	LoaiSanPhamService loaiSanPhamService;
	
	@GetMapping("dashboard")
	public String doGetDashBoard(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0),10);
		Page<SanPham> pages = sanPhamService.findAll(pageable);
		model.addAttribute("sanPhamPage", pages);
		return "/admin/dashboard/dashboard";
	}
	
	@GetMapping("addProduct")
	public String doGetAddProduct(Model model, @ModelAttribute("maSP") SanPham maSP, @RequestParam("maLoaiSanPham") Integer maLSP) {
		LoaiSanPham lsp = loaiSanPhamService.findLoaiSanPhamById(maLSP);
		model.addAttribute("lsp",lsp);
		
		
		SanPham tsp = sanPhamService.saveSanPham(maSP);
		return "/admin/management/addProduct";
	}
	
	@GetMapping("updateProduct")
	public String doGetUpdateProduct(Model model, @ModelAttribute("maSP") SanPham maSP) {
		SanPham updatasp = sanPhamService.updateSanPham(maSP);
		return "/admin/management/updateProduct";
	}
	
	@GetMapping("updateProduct/{maSP}")
	public String Edit(Model model, @PathVariable("maSP") Integer maSP) {
	//	LoaiSanPham lsp = loaiSanPhamService.findLoaiSanPhamById(maLSP);
		//model.addAttribute("lsp",lsp);
		List<LoaiSanPham> listlsp = loaiSanPhamService.findByAll();
		
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		model.addAttribute("sp",sp);
		return "/admin/management/updateProduct";
	}
}
