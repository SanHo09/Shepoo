package com.poly.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="Nguoidung")
public class NguoiDung {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaND")
	int maND;
	@Column(name = "UserName")
	String userName;
	@Column(name = "SDT")
	String sdt;
	@Column(name = "password")
	String password;
	@Column(name = "Gioitinh")
	boolean gioiTinh;
	@Column(name = "Ngaysinh")
	Date ngaySinh;
	@Column(name = "Diachi")
	String diaChi;
	@Column(name = "Vaitro")
	boolean vaiTro;
	@Column(name = "Tenshop")
	String tenShop;
	@Column(name = "TenNguoiDUng")
	String tenNguoiDung;
	@Column(name = "Email")
	String email;
	@Column(name = "Image")
	String image;
	@Column(name = "Active")
	boolean isActive;
	@OneToMany(mappedBy = "nguoidung")
	List<ThongBao> thongbao;
}
