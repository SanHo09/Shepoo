package com.poly.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="thongbao")
public class ThongBao {
	@Id
	int maTB;
	String noiDung;
	@ManyToOne@JoinColumn(name = "maND")
	NguoiDung nguoidung;

}
