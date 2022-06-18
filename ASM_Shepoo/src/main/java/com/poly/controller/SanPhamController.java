package com.poly.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.BinhLuan;
import com.poly.model.NguoiDung;
import com.poly.model.SanPham;
import com.poly.service.SanPhamService;
import com.poly.service.impl.BinhLuanServicelmpl;
import com.poly.service.impl.NguoiDungServiceImpl;
import com.poly.service.impl.SanPhamServiceImpl;
import com.poly.untils.SessionService;

@Controller
@RequestMapping("/product/")
public class SanPhamController {
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	SanPhamServiceImpl spImpl;

	@Autowired
	NguoiDungServiceImpl ndImpl;
	
	@Autowired
	BinhLuanServicelmpl binhLuanServiceImpl;
	
	@Autowired
	SessionService session;
	@GetMapping("index")
	public String doGetIndex(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 10);
		Page<SanPham> pages = sanPhamService.findAll(pageable);
		model.addAttribute("sanPhamPage", pages);
		return "/product/index";
	}
	
	@GetMapping("/detail/{maSP}")
	public String showIndex(@PathVariable("maSP") Integer maSP, Model model) {
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		System.out.println(maSP);
		model.addAttribute("product", sp);
		List<BinhLuan> bl = binhLuanServiceImpl.findAllByMaSP(maSP);
		bl.forEach(i -> System.out.println(i.getMaBL()+"Hello"));
		model.addAttribute("bl", bl);
		Integer binhLuanQuantity = binhLuanServiceImpl.countBinhLuanByMaSP(maSP);
		model.addAttribute("binhLuanQuantity", binhLuanQuantity);
		return "/product/detail";
	}
	

	
	@PostMapping("detail/create/{maSP}")
	public String createCmt(@RequestParam("noiDung") String noiDung, @RequestParam("danhGia") int danhGia, @PathVariable int maSP)
	{
		NguoiDung nd = session.get("user");
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		BinhLuan bl = new BinhLuan();
		bl.setDanhGia(danhGia);
		bl.setNguoiDung(nd);
		bl.setNoiDung(noiDung);
		bl.setSanPham(sp);
		Date now = new Date();
		bl.setNgayBL(now);
		binhLuanServiceImpl.create(bl);
		return "redirect:/product/detail/"+maSP;
	}
	
	@GetMapping("detail/delete/{id}")
	public String deleteCmt(@PathVariable("id") int id)
	{
		binhLuanServiceImpl.deleteById(id);
		return "redirect:/product/detail";
	}
	
	@GetMapping("detail/edit/{id}")
	public String editCmt(@PathVariable("id") int id, Model model, HttpSession session)
	{
		BinhLuan bl = binhLuanServiceImpl.findById(id);
		session.setAttribute("noiDung", bl.getNoiDung());
		session.setAttribute("isUpdate", true);
		session.setAttribute("maBinhLuan", id);
		return "redirect:/product/detail";
	}
	
	@PostMapping("detail/update/{id}")
	public String updateCmt(@PathVariable("id") int id, @RequestParam("danhGia") int danhGia,
			@RequestParam("noiDung") String noiDung, HttpSession session)
	{
		BinhLuan bl = binhLuanServiceImpl.findById(id);
		bl.setDanhGia(danhGia);
		bl.setNoiDung(noiDung);
		Date now = new Date();
		bl.setNgayBL(now);
		binhLuanServiceImpl.update(bl);
		session.setAttribute("isUpdate", false);
		return "redirect:/product/detail";
	}
}
