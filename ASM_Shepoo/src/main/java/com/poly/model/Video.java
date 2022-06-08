package com.poly.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Video")
public class Video implements Serializable{
	@Id
	Integer id;
	@ManyToOne
	@JoinColumn(name="MaBinhLuan")
	BinhLuan binhluan;
}
