package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart/")
public class GioHangController {
	@GetMapping("cart")
	public String doCart(Model model) {
		return "/product/cart";
	}
}
