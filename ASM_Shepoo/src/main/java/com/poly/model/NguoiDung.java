package com.poly.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="nguoidung")
public class NguoiDung {
	@Id
	int maND;
	String username;
	String sdt;
	String password;
	boolean gioitinh;
	Date ngaysinh;
	String diachi;
	boolean vaitro;
	String tenshop;
	String tennguoidung;
	String email;
	String image;
	@OneToMany(mappedBy = "nguoidung")
	List<ThongBao> thongbao;
}
