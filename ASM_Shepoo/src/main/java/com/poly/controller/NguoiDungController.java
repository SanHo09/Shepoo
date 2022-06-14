package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/")
public class NguoiDungController {
	
	@GetMapping("signIn")
	public String doGetSignIn() {
		return "/user/signIn";
	}
	
	@GetMapping("signUp")
	public String doGetSignUp() {
		return "/user/signUp";
	}
}
