package com.poly;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {
	@RequestMapping("test/categories")
	public String testCategories() {
		return "/template/product/categories";
	}
	
	@RequestMapping("test/index")
	public String testIndex() {
		return "/template/product/index";
	}
	
	@RequestMapping("test/detail")
	public String testDetail() {
		return "/template/product/detail";
	}
	
	@RequestMapping("test/signIn")
	public String testSignIn() {
		return "/template/user/signIn";
	}
	
	@RequestMapping("test/signUp")
	public String testSignUp() {
		return "/template/user/signUp";
	}
	
	@RequestMapping("test/product/cart")
	public String testCart() {
		return "/template/product/cart";
	}
	
	
	@RequestMapping("test/admin/dashboard")
	public String testDashboard() {
		return "/template/admin/dashboard";
	}
}
