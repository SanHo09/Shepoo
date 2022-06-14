package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.poly.dao.VideoDAO;
import com.poly.model.Video;
import com.poly.service.VideoService;

public class VideoServicelmpl implements VideoService{
	@Autowired
	VideoDAO dao;

	@Override
	public List<Video> findAll() {
		return dao.findAll();
	}

	@Override
	public Video findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public Video create(Video entity) {
		return dao.save(entity);
	}

	@Override
	public Video update(Video entity) {
		return dao.save(entity);
	}

	@Override
	public void deleteById(Integer maBL) {
		dao.deleteById(maBL);
		
	}

	@Override
	public List<Video> findAllByVideo(Integer maBL) {
		return dao.findAllByVideo(maBL);
	}
}
