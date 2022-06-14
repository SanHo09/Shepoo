package com.poly.untils;

import javax.servlet.http.Cookie;

public interface CookieService {
	Cookie get(String name);
	Cookie create(String name, String value, int hours);
	
	default String get(String name, String defaultValue) {
		Cookie cookie = this.get(name);
		return cookie == null ? defaultValue : cookie.getValue();
	}
	default void delete(String name) {
		this.create(name, "", 0);
	}
}