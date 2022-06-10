package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.GioHang;

public interface GioHangDAO extends JpaRepository<GioHang, Integer> {
}
