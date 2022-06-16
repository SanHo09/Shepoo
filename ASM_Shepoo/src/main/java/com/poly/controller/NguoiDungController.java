package com.poly.controller;

import java.lang.StackWalker.Option;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.NguoiDung;
import com.poly.service.NguoiDungService;
import com.poly.untils.SessionService;

import net.bytebuddy.agent.builder.AgentBuilder.FallbackStrategy.Simple;

@Controller
public class NguoiDungController {
	@Autowired
	NguoiDungService dao;
	@Autowired
	SessionService session;
	@Autowired
	JavaMailSender javaMailSender; 
	
	
	
	@RequestMapping("/user/signIn")
	public String Login(Model model,@RequestParam("username") Optional<String> uname,
			@RequestParam("password") Optional<String> pass) {
		String username = uname.orElse(session.get("name", ""));
		session.set("name", username);
		String password = pass.orElse(session.get("password", ""));
		session.set("password", password);
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
	@GetMapping("/user/sendmail")
	public String doGetForgotPass() {
		return "/user/sendmail";
	}
	@PostMapping("/forgotPass")
	public String forgotPass(Model model,@RequestParam("TxtTo") Optional<String> to) {
		String toemail = to.orElse(session.get("to", ""));
		SimpleMailMessage msg=new SimpleMailMessage();
		List<NguoiDung> list=dao.findAllByActive();
		for(NguoiDung i:list) {
			if(i.getEmail().equals(toemail)) {				
				msg.setTo(toemail);
				msg.setText("Username :"+i.getUserName()+" Password :" +i.getPassword());
				javaMailSender.send(msg);
				model.addAttribute("message", "Chúng tôi đã gửi TK MK tới MAIL của bạn!");
				return "/user/signIn";
			}
			else if(i.getEmail()!=toemail){
				model.addAttribute("error", "Tài khoản không tồn tại!");
				return "/user/sendmail";
			}
		}
		return "/user/sendmail";
	}
	@RequestMapping("/user/signUp")
	public String SignUp(NguoiDung user,Model model,@RequestParam("txtUserName") Optional<String> username,
			@RequestParam("txtFullName") Optional<String> fullname,
			@RequestParam("txtPassword") Optional<String> password,
			@RequestParam("txtConFirmPassword") Optional<String> comfirm) {
		String uname = username.orElse(session.get("username", ""));	
		String fname = fullname.orElse(session.get("fullname", ""));
		String pass = password.orElse(session.get("password", ""));
		String confirmpass = comfirm.orElse(session.get("comfirm", ""));
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
			else if(uname.equals("")) {
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
