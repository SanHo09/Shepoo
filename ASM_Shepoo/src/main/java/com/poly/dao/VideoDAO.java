package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Video;

public interface VideoDAO extends JpaRepository<Video, Integer>{
	@Query("SELECT p FROM Video p WHERE p.binhLuan.maBL=?1")
	List<Video> findAllByVideo(Integer maBL);
	
	@Query("DELETE Video p WHERE p.binhLuan.maBL=?1")
	Void DeleteByID(Integer maBL);
}
