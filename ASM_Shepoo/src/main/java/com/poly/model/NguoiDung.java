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
<<<<<<< HEAD
	@Column(name = "SDT")
=======
	boolean gioiTinh;
>>>>>>> bff4895703f5771fc7ad39498234f95f1460f9d3
	String sdt;
	@Column(name = "password")
	String password;
<<<<<<< HEAD
	@Column(name = "Gioitinh")
	boolean gioiTinh;
	@Column(name = "Ngaysinh")
=======
>>>>>>> bff4895703f5771fc7ad39498234f95f1460f9d3
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
<<<<<<< HEAD
	@Column(name = "Active")
	boolean isActive;
=======
	String active;
>>>>>>> bff4895703f5771fc7ad39498234f95f1460f9d3
	@OneToMany(mappedBy = "nguoidung")
	List<ThongBao> thongbao;
}
