<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container productDetail"
	style="height: 500px; background-color: white;">
	<div class="row productDetail-title align-middle">
		<span>CHI TIẾT SẢN PHẨM</span>
	</div>
	<div class="row">
		<div class="col-sm-2">Danh mục</div>
		<div class="col-sm-10">${product.loaiSanPham.tenLSP }</div>
	</div>
	<div class="row">
		<div class="col-sm-2">Nhà sản xuất</div>
		<div class="col-sm-10">Gucci</div>
	</div>
	<div class="row">
		<div class="col-sm-2">Đã bán</div>
		<div class="col-sm-10">${product.soLuongDaBan }</div>
	</div>
	<div class="row note">
		${product.moTa }
	</div>
</div>