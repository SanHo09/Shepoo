package com.poly.controller;

import java.lang.StackWalker.Option;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.NguoiDung;
import com.poly.service.NguoiDungService;
import com.poly.untils.SessionService;

@Controller
public class NguoiDungController {
	@Autowired
	NguoiDungService dao;
	@Autowired
	SessionService session;
	
	@RequestMapping("/user/signIn")
	public String Login(Model model,@RequestParam("username") Optional<String> uname,
			@RequestParam("password") Optional<String> pass) {
		String username = uname.orElse(session.get("uname", ""));
		session.set("uname", username);
		String password = pass.orElse(session.get("pass", ""));
		session.set("pass", password);
		NguoiDung user=dao.findByUsernameAndPassword(username, password);
		if (user != null) {
			if (user.isVaiTro()==true) {
				return "/admin/dashboard/dashboard";
			}
			else {
			return "/product/index";	
			}
		}
		else {
			model.addAttribute("msg", "Tài khoản mật khẩu không chính xác!");
			return "/user/signIn";
		}

	}
	@RequestMapping("/user/signUp")
	public String SignUp(NguoiDung user,Model model,@RequestParam("txtUserName") Optional<String> username,
			@RequestParam("txtFullName") Optional<String> fullname,
			@RequestParam("txtPassword") Optional<String> password,
			@RequestParam("txtConFirmPassword") Optional<String> comfirm) {
		String uname = username.orElse(session.get("username", ""));
		session.set("uname", uname);
		String fname = fullname.orElse(session.get("fullname", ""));
		session.set("uname", fname);
		String pass = password.orElse(session.get("password", ""));
		session.set("pass", pass);
		String confirmpass = comfirm.orElse(session.get("comfirm", ""));
		session.set("comfirm", confirmpass);
		
		System.out.print("username:"+uname);
		System.out.print("fullname:"+fname);
		System.out.print("pass:"+pass);
		System.out.print("confirm:"+confirmpass);
		List<NguoiDung> list=dao.findAllByActive();
		for(NguoiDung i:list) {
			if(i.getUserName().equals(uname)) {
				 model.addAttribute("msg", "Tài khoản đã tồn tại!");
				 return "/user/signUp";	
			}
			else if(!pass.equals(confirmpass)) {
				model.addAttribute("msg", "Mật khẩu không trùng khớp!");
				return "/user/signUp";	
			}
			
			else {
				user.setActive(true);
				user.setDiaChi("TP HCM");
				user.setEmail("nguoidung@gmail.com");
				user.setGioiTinh(false);
				user.setImage(null);
				user.setNgaySinh("2000-10-22");
				user.setPassword(pass);
				user.setSdt("0912345678");
				user.setTenNguoiDung(fname);
				user.setTenShop(null);
				user.setUserName(uname);
				user.setVaiTro(true);
				dao.create(user);
				return "/user/signIn";
			}	
		}
		return "/user/signUp";	
		}
	
	
}
