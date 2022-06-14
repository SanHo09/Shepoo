package com.poly.untils;

import java.util.Map;

import com.poly.model.NguoiDung;

import lombok.Data;

public interface MailService {
	void send(String to, String subject, String text, Map<String, String> others);
	default void send(String to, String subject, String text) {
		this.send(to, subject, text, Map.of());
	}
	default String getUrl(String uri) {
		return "http://localhost:8080" + uri;
	}
	default void sendWelcome(NguoiDung customer) {
		String to = customer.getEmail();
		String subject = "Welcome to Lycato";
		String url = this.getUrl("/customer/activate/" + customer.getTenNguoiDung());
		String text = "<a href='%s'>Activate</a>".formatted(url);
		this.send(to, subject, text);
	}
	default void sendResetPassword(NguoiDung customer) {
		String to = customer.getEmail();
		String subject = "Reset Password";
		String token = Integer.toHexString(customer.getPassword().hashCode());
		String url = this.getUrl("/customer/reset-password/" + token);
		String text = "<a href='%s'>Reset Password</a>".formatted(url);
		this.send(to, subject, text);
	}
//	default void sendOrder(Order order) {
//		String to = order.getCustomer().getEmail();
//		String subject = "Your order detail!";
//		String url = this.getUrl("/order/detail/" + order.getId());
//		String text = "<a href='%s'>View order detail</a>".formatted(url);
//		this.send(to, subject, text);
//	}
	default void share(ShareInfo mail) {
		String url = this.getUrl("/product/detail/" + mail.getId());
		String text = mail.getMessage() + "<hr><a href='%s'>View product detail</a>".formatted(url);
		this.send(mail.getTo(), mail.getSubject(), text, Map.of("from", mail.getFrom()));
	}
	
	@Data
	public static class ShareInfo{
		Integer id;
		String from;
		String to;
		String subject;
		String message;
	}
}