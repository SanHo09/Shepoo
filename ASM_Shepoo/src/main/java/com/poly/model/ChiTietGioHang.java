package com.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ChitietGioHang")
public class ChiTietGioHang implements Serializable{
	
	@Id
	@Column(name = "MaCTHD")
	int maCTGH;
	
	@ManyToOne @JoinColumn(name = "maGioHang")
	GioHang gioHang;
	
	@OneToOne @JoinColumn(name="maSP")
	SanPham sanPham;
	
	int soLuongMua;

}
