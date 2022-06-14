package com.poly.model;

import java.util.Date;
import java.util.List;

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
@Table(name="nguoidung")
public class NguoiDung {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	int maND;
	String userName;
	boolean gioiTinh;
	String sdt;
	String password;
	Date ngaySinh;
	String diaChi;
	boolean vaiTro;
	String tenShop;
	String tenNguoiDung;
	String email;
	String image;
	String active;
	@OneToMany(mappedBy = "nguoidung")
	List<ThongBao> thongbao;
}