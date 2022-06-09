package com.poly.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "SanPham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaSP")
	private int maSP;
	@Column(name = "TenSP")
	private String tenSP;
	@Column(name = "Gia")
	private double gia;
	@Column(name = "SoLuong")
	private int soLuong;
	@Column(name = "DaBan")
	private int soLuongDaBan;
	@Column(name = "MoTa")
	private String moTa;
	@Column(name = "NguoiBan")
	private String tenNguoiBan;
	@Column(name = "NoiBan")
	private String noiBan;
	@Column(name = "MauSac")
	private String mauSac;
	@Column(name = "Size")
	private String size;
	@Column(name = "XuatSu")
	private String xuatSu;
	@Column(name = "ChatLieu")
	private String chatLieu;
	@Column(name = "RATE")
	private double rate;
	@Column(name = "Anh1")
	private String anh1;
	@Column(name = "Anh2")
	private String anh2;
	@Column(name = "Anh3")
	private String anh3;
	@Column(name = "Anh4")
	private String anh4;
	@Column(name = "Anh5")
	private String anh5;
	@Column(name = "Active")
	private boolean active;
	@ManyToOne
	@JoinColumn(name = "MaLSP")
	private LoaiSanPham loaiSanPham;
}
