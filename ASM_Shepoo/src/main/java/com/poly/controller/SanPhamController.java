package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.SanPham;
import com.poly.service.SanPhamService;

@Controller
@RequestMapping("/product/")
public class SanPhamController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping("index")
	public String doGetIndex(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 10);
		Page<SanPham> pages = sanPhamService.findAll(pageable);
		model.addAttribute("sanPhamPage", pages);
		return "/product/index";
	}
	
	@GetMapping("detail")
	public String doGetDetail(Model model) {
		
		return "/product/detail";
	}
}
