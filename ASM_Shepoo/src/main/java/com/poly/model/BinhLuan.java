package com.poly.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name = "BinhLuan")
public class BinhLuan implements Serializable{
	@Id
	Integer mabl;
	String noidung;
	Integer danhgia;
	@Temporal(TemporalType.DATE)
	@Column(name = "NgayBinhLuan")
	Date ngaybl = new Date();
	@OneToMany(mappedBy = "")
}
