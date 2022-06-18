package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.poly.model.SanPham;
import com.poly.service.SanPhamService;

@Controller
public class ChiTietController {
	@Autowired 
	private SanPhamService sanPhamService;
	@GetMapping("/detail/{maSP}")
	public String showIndex(@PathVariable("maSP") Integer maSP, Model model) {
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		model.addAttribute("product", sp);
		return "detail";
	}

}
