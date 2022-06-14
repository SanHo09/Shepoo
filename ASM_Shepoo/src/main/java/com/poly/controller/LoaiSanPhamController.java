package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/categories/")
public class LoaiSanPhamController {
	@GetMapping("categori")
	public String doGetCategories(Model model) {
		
		return "/product/categories";
	}
}
