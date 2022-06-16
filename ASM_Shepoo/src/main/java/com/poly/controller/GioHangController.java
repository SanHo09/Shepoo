package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.ChiTietGioHang;
import com.poly.model.GioHang;
import com.poly.model.SanPham;
import com.poly.service.ChiTietGioHangService;
import com.poly.service.GioHangService;
import com.poly.service.SanPhamService;

@Controller
@RequestMapping("/cart")
public class GioHangController {
	@Autowired
	GioHangService gioHangService;
	
	@Autowired
	ChiTietGioHangService chiTietGioHangService;
	
	@Autowired
	SanPhamService sanPhamService;
	@GetMapping("/cart")
	public String doGetCart(Model model) {
		GioHang giohang = gioHangService.findAllByNguoiDung(1);
		List<ChiTietGioHang> chiTietGioHangs = chiTietGioHangService.findAllByGioHang(giohang.getMaGH());
		model.addAttribute("chiTietGioHang", chiTietGioHangs);
		model.addAttribute("gioHang", giohang);	
		return "/product/cart";
	}
	
	@PostMapping("/addToCard/{maSP}")
	public String addToCard(Model model, @RequestParam("maSP") int maSP) {
		int maNDSession = 1;
		GioHang giohang = gioHangService.findAllByNguoiDung(maNDSession);
		List<ChiTietGioHang> chiTietGioHangs = chiTietGioHangService.findAllByGioHang(giohang.getMaGH());
		for(int i=0; i< chiTietGioHangs.size() ; i++) {
			int SO_LUONG_MUA_CU = chiTietGioHangs.get(i).getSoLuongMua();
			if(chiTietGioHangs.get(i).getSanPham().getMaSP() == maSP) {
				chiTietGioHangs.get(i).setSoLuongMua(SO_LUONG_MUA_CU+1);
				return "redirect:/cart/cart";
			}
		}
		ChiTietGioHang ctgh = new ChiTietGioHang();
		ctgh.setGioHang(giohang);
		ctgh.setSoLuongMua(1);
		ctgh.setSanPham(sanPhamService.findSanPhamById(maSP));
		chiTietGioHangService.create(ctgh);
		return "redirect:/cart/cart";
	}
	
	@PostMapping("/removeFromCard/{maCTGH}")
	public String removeFromCard(Model model, @RequestParam("maCTGH") int maCTGH) {
		ChiTietGioHang ctgh = chiTietGioHangService.findByID(maCTGH).get(); 
		chiTietGioHangService.delete(ctgh);
		return "redirect:/cart/cart";
	}
	
	@PostMapping("/setQuantiy/{quantity}")
	public String setQuantity(Model model, @RequestParam("maCTGH") int maCTGH, @RequestParam("quantity") int quantity) {
		ChiTietGioHang ctgh = chiTietGioHangService.findByID(maCTGH).get(); 
		if(quantity<=0) {
			chiTietGioHangService.delete(ctgh);
		} else {
			ctgh.setSoLuongMua(quantity);
			chiTietGioHangService.update(ctgh);
		}
		return "redirect:/cart/cart";
	}
	
	@PostMapping("/thanhToan")
	public String thanhToan() {
		int maNDSession = 1;
		GioHang gioHang = gioHangService.findAllByNguoiDung(maNDSession);
		List<ChiTietGioHang> ctgh = chiTietGioHangService.findAllByGioHang(gioHang.getMaGH());
		// xet so luong lai cho san pham
		for(ChiTietGioHang i : ctgh) {
			SanPham sanPham = i.getSanPham();
			int SO_LUONG_CU = sanPham.getSoLuong();
			int SO_LUONG_MUA = i.getSoLuongMua();
			sanPham.setSoLuong(SO_LUONG_CU - SO_LUONG_MUA);
		}
		gioHangService.clear(gioHang);
		
		return "redirect:/product/index";
	}
	
	
}
