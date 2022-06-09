package com.poly.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="chiTietHoaDon")
public class ChiTietHoaDon {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maCTHD;
	
	@ManyToOne @JoinColumn(name = "maHD")
	private HoaDon hoadon;
	
	@OneToMany(mappedBy = "maSP")
	private List<SanPham> sanpham;
	
	private int soLuongMua;
	
	private String noiBan;
	
	private String noiNhan;
	
	private double phiVanChuyen;
	
	
	
	
}
