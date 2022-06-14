package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class NguoiBanController {
	@GetMapping("dashboard")
	public String doGetDashBoard(Model model) {
		return "/admin/dashboard/dashboard";
	}
	
	@GetMapping("addProduct")
	public String doGetAddProduct(Model model) {
		return "/admin/management/addProduct";
	}
	
	@GetMapping("updateProduct")
	public String doGetUpdateProduct(Model model) {
		return "/admin/management/updateProduct";
	}
}
