package com.poly.controller;

import java.lang.StackWalker.Option;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String Login(Model model, @RequestParam("username") Optional<String> uname,
			@RequestParam("password") Optional<String> pass) {
		String username = uname.orElse(session.get("uname", ""));
		session.set("uname", username);
		session.set("user", dao.findByUsername(username));
		String password = pass.orElse(session.get("pass", ""));
		session.set("pass", password);
		System.out.println(username+"userName");
		NguoiDung user = dao.findByUsernameAndPassword(username, password);
		if (user != null) {
			if (user.isVaiTro() == true) {
				return "redirect:/admin/dashboard";
			} else {
				return "redirect:/product/index";
			}
		} else {
			model.addAttribute("msg", "Tài khoản mật khẩu không chính xác!");
			return "/user/signIn";
		}

	}

	@GetMapping("/user/signUp")
	public String SignUp() {
		return "/user/signUp";
	}
	
	
	@PostMapping("/user/signUp")
	public String SignUp(NguoiDung user, Model model, @RequestParam("txtUserName") Optional<String> username,
			@RequestParam("txtFullName") Optional<String> fullname,
			@RequestParam("txtPassword") Optional<String> password,
			@RequestParam("txtConFirmPassword") Optional<String> comfirm) {
		String uname = username.orElse(session.get("username", ""));
		String fname = fullname.orElse(session.get("fullname", ""));
		String pass = password.orElse(session.get("password", ""));
		String confirmpass = comfirm.orElse(session.get("comfirm", ""));
		List<NguoiDung> list = dao.findAllByActive();
		for (NguoiDung i : list) {
			if (i.getUserName().equals(uname)) {
				model.addAttribute("msg", "Tài khoản đã tồn tại!");
				return "/user/signUp";
			} else if (!pass.equals(confirmpass)) {
				model.addAttribute("msg", "Mật khẩu không trùng khớp!");
				return "/user/signUp";
			}

			else {
				
				user.setTenNguoiDung(fname);
				user.setPassword(pass);
				user.setUserName(uname);
				dao.create(user);
				return "redirect:/user/signIn";
			}
		}
		return "redirect:/user/signIn";
	}
	
	@GetMapping("/user/logout")
	public String logOut() {
		session.remove("uname");
		session.remove("pass");
		return "redirect:/user/signIn";
	}
	
	

}
