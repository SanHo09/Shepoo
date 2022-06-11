package com.poly.service;

import java.util.List;

import com.poly.model.Video;

public interface VideoService {
	List<Video> findAll();
	List<Video> findAllByVideo(Integer maBL);
	Video findById(Integer id);
	Video create(Video entity);
	Video update(Video entity);
	void deleteById(Integer maBL);
}
