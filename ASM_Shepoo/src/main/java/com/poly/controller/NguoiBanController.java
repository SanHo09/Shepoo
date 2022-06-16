package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.LoaiSanPham;
import com.poly.model.SanPham;
import com.poly.service.LoaiSanPhamService;
import com.poly.service.SanPhamService;




@Controller
@RequestMapping("/admin/")
public class NguoiBanController {
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	LoaiSanPhamService loaiSanPhamService;
	
	@GetMapping("dashboard")
	public String doGetDashBoard(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0),20);
		Page<SanPham> pages = sanPhamService.findAll(pageable);
		model.addAttribute("sanPhamPage", pages);
		return "/admin/dashboard/dashboard";
	}
	
	
	
	@GetMapping("addProduct")
	public String doGetAddProduct(Model model) {
		List<LoaiSanPham> listlsp = loaiSanPhamService.findByAll();
		model.addAttribute("listlsp",listlsp);
		return "/admin/management/addProduct";
	}
	
	
	
	@PostMapping("addProduct/save")
	public String doPostAddProduct(@ModelAttribute("sanPham") SanPham sanPham, Model model, @ModelAttribute("loaisanpham") int maLSP,
			@ModelAttribute("tenSP") String tenSP, @ModelAttribute("gia") String gia, @ModelAttribute("soLuong") String soLuong) {
		int maNBSession = 0;
		sanPham.setMaNguoiBan(maNBSession);
		sanPham.setLoaiSanPham(loaiSanPhamService.findLoaiSanPhamById(maLSP));
		sanPham.setTenSP(tenSP);
		sanPham.setGia(Double.parseDouble(gia));
		sanPham.setSoLuong(Integer.parseInt(soLuong));
		SanPham addsp = sanPhamService.saveSanPham(sanPham);
		
		return "redirect:/admin/dashboard";
	}
	
	
	
	@GetMapping("updateProduct")
	public String doGetUpdateProduct(Model model) {
		return "/admin/management/updateProduct";
	}
	
	
	
	@PostMapping("updateProduct/save")
	public String doPostUpdateProduct(@ModelAttribute("sanPham") SanPham sanPham, Model model, @ModelAttribute("loaisanpham") int maLSP,
			@ModelAttribute("tenSP") String tenSP, @ModelAttribute("gia") String gia, @ModelAttribute("soLuong") String soLuong, @ModelAttribute("maSP") String maSP) {
		sanPham.setMaSP(Integer.parseInt(maSP));
		sanPham.setLoaiSanPham(loaiSanPhamService.findLoaiSanPhamById(maLSP));
		sanPham.setTenSP(tenSP);
		sanPham.setGia(Double.parseDouble(gia));
		sanPham.setSoLuong(Integer.parseInt(soLuong));
		sanPham.setLoaiSanPham(loaiSanPhamService.findLoaiSanPhamById(maLSP));
		System.out.println(2351);
		SanPham udatasp = sanPhamService.updateSanPham(sanPham);
		return "redirect:/admin/dashboard";
	}
	
	
	
	@GetMapping("updateProduct/{maSP}")
	public String Edit(Model model, @PathVariable("maSP") Integer maSP) {
		List<LoaiSanPham> listlsp = loaiSanPhamService.findByAll();
		model.addAttribute("listlsp",listlsp);
		
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		model.addAttribute("sp",sp);
		return "/admin/management/updateProduct";
	}
	
	@PostMapping("deleteProduct/{maSP}")
	public String Deletesp(Model model, @PathVariable("maSP") Integer maSP) {
		SanPham sp = sanPhamService.findSanPhamById(maSP);
		sanPhamService.deleteSanPham(sp);
		return "redirect:/admin/dashboard";
	}
}
