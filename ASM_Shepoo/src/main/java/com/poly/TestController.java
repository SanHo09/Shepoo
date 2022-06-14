package com.poly;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.querydsl.QPageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.GioHangDAO;
import com.poly.model.NguoiDung;
import com.poly.model.SanPham;
import com.poly.service.NguoiDungService;
import com.poly.service.SanPhamService;
import com.poly.service.impl.GioHangServiceImpl;


@Controller
public class TestController {
	
	@Autowired 
	NguoiDungService dao;	
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
		return "/template/admin/dashboard/dashboard";
	}
	
	@RequestMapping("test/admin/addProduct")
	public String testadd() {
		return "/template/admin/management/addProduct";
	}
	
	
}
