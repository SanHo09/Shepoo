package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.ChiTietGioHang;
import com.poly.model.GioHang;
import com.poly.model.NguoiDung;
import com.poly.model.SanPham;
import com.poly.service.ChiTietGioHangService;
import com.poly.service.GioHangService;
import com.poly.service.SanPhamService;
import com.poly.untils.SessionService;

@Controller
@RequestMapping("/cart")
public class GioHangController {
	@Autowired
	GioHangService gioHangService;
	
	@Autowired
	ChiTietGioHangService chiTietGioHangService;
	
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	SessionService session;
	
	@GetMapping("/cart")
	public String doGetCart(Model model) {
		// check đăng nhập
		if(session.get("user") == null) {
			return "redirect:/product/index";
		}
		NguoiDung nd = session.get("user");
		GioHang giohang = gioHangService.findAllByNguoiDung(nd.getMaND());
		// check có giỏ hảng chưa, nếu chưa thì tạo mới
		if(giohang == null) {
			GioHang gh = new GioHang();
			gh.setNguoiDung(session.get("user"));
			gh.setTongGia(0);
			gioHangService.create(giohang);
		}
		List<ChiTietGioHang> chiTietGioHangs = chiTietGioHangService.findAllByGioHang(giohang.getMaGH());
		model.addAttribute("chiTietGioHang", chiTietGioHangs);
		model.addAttribute("gioHang", giohang);	
		return "/product/cart";
	}
	
	@PostMapping("/addToCard/{maSP}")
	public String addToCard(Model model, @PathVariable("maSP") String _maSP) {
		// check đăng nhập
		int maSP = Integer.parseInt(_maSP);
		if(session.get("user") == null) {
			System.out.println("Chưa Dang Nhap");
			return "redirect:/product/index";
		}
		NguoiDung nd = session.get("user");
		GioHang giohang = gioHangService.findAllByNguoiDung(nd.getMaND());
		// check có giỏ hảng chưa, nếu chưa thì tạo mới
		if(giohang == null) {
			System.out.println("Tao moi");
			GioHang gh = new GioHang();
			gh.setNguoiDung(session.get("user"));
			gh.setTongGia(0);
			gioHangService.create(gh);
			List<ChiTietGioHang> chiTietGioHangs = chiTietGioHangService.findAllByGioHang(gh.getMaGH());
			for(int i=0; i< chiTietGioHangs.size() ; i++) {
				int SO_LUONG_MUA_CU = chiTietGioHangs.get(i).getSoLuongMua();
				if(chiTietGioHangs.get(i).getSanPham().getMaSP() == maSP) {
					System.out.println("tang so luong len: "+(SO_LUONG_MUA_CU+1));
					chiTietGioHangs.get(i).setSoLuongMua(SO_LUONG_MUA_CU+1);
					chiTietGioHangService.update(chiTietGioHangs.get(i));
					return "redirect:/cart/cart";
				}
			}
		} else {
			List<ChiTietGioHang> chiTietGioHangs = chiTietGioHangService.findAllByGioHang(giohang.getMaGH());
			for(int i=0; i< chiTietGioHangs.size() ; i++) {
				int SO_LUONG_MUA_CU = chiTietGioHangs.get(i).getSoLuongMua();
				if(chiTietGioHangs.get(i).getSanPham().getMaSP() == maSP) {
					System.out.println("tang so luong len: "+(SO_LUONG_MUA_CU+1));
					chiTietGioHangs.get(i).setSoLuongMua(SO_LUONG_MUA_CU+1);
					chiTietGioHangService.update(chiTietGioHangs.get(i));
					return "redirect:/cart/cart";
				}
			}
		} 
		// Check nếu có sản phẩm rồi thi cho số lượng sản phẩm +1
		
		
		// Nếu chưa thêm thì tạo mới chi tiết giỏ hàng (thêm sản phẩm)
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
