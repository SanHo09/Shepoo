package com.poly.untils;

import java.io.File;
import java.util.List;
import java.util.stream.Stream;

import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
	File save(MultipartFile file, String folder);
	
	default List<File> save(MultipartFile[] files, String folder){
		return Stream.of(files)
				.map(file -> this.save(file, folder))
				.filter(file -> file != null).toList();
	}
	
	byte[] read(String path);
	
	void delete(String path);
}
