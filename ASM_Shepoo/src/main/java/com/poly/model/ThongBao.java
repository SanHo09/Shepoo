package com.poly.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="thongbao")
public class ThongBao {
	@Id
	int maTB;
	String noidung;
	int maND;
	@ManyToOne@JoinColumn(name = "maND")
	NguoiDung nguoidung;

}
