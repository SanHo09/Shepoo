package com.poly.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
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
	@Id
	int maND;
	String userName;
	String sdt;
	String password;
	boolean gioiTinh;
	Date ngaySinh;
	String diaChi;
	boolean vaiTro;
	String tenShop;
	String tenNguoiDung;
	String email;
	String image;
	@OneToMany(mappedBy = "nguoidung")
	List<ThongBao> thongbao;
}
