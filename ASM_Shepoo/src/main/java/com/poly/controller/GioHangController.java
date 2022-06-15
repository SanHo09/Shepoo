package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.ChiTietGioHang;
import com.poly.model.SanPham;
import com.poly.service.ChiTietGioHangService;
import com.poly.service.GioHangService;

@Controller
@RequestMapping("/cart/")
public class GioHangController {
//	@Autowired
//	GioHangService gioHangService;
//	
//	@Autowired
//	ChiTietGioHangService chiTietGioHangService;
	
	@GetMapping("cart")
	public String doCart(Model model) {
		
		
		return "/product/cart";
	}
	
	
}
