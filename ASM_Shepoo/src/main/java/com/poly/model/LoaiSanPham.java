package com.poly.model;

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

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "LoaiSanPham")
public class LoaiSanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaLSP")
	private int maLSP;
	@Column(name = "TenLSP")
	private String tenLSP;
	@OneToMany(mappedBy = "loaiSanPham")
	private List<SanPham> sanPhams;
}
