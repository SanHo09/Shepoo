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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "KhuyenMai")
public class KhuyenMai {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int maGiamGia;

	@Temporal(TemporalType.TIME)
	Date NgayBatDau = new Date();

	@Temporal(TemporalType.TIME)
	Date NgayKetThuc;

	int soPhanTram;

	@ManyToOne
	@JoinColumn(name = "maSP")
	SanPham sanPham;

	@ManyToOne
	@JoinColumn(name = "maND")
	NguoiDung nguoiDung;

}
