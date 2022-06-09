package com.poly.model;

import java.util.Date;
import java.util.List;

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

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="hoadon")

public class HoaDon {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maHD;
	
	@ManyToOne @JoinColumn(name = "maND")
	private NguoiDung nguoidung;
	
	private Date NgayLapHoaDon;
	
	private double TongGia;

}
