package com.poly.untils;

public interface SessionService {
	<T> T get(String name, T defaultValue);
	default <T> T get(String name) {
		return this.get(name, null);
	}
	void set(String name, Object value);
	<T> T remove(String name);
}
