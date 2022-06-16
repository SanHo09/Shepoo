<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="/admin/addProduct/save" modelAtribute="sanPham" method="post">
	<div class="input-group">
		<select name="loaisanpham" class="form-select" id="inputGroupSelect04" 
			aria-label="Example select with button addon">
			<c:forEach items="${listlsp }" var="item" varStatus="loop">
				<option value="${item.maLSP}">${item.tenLSP}</option>
			</c:forEach>
		</select>
	
		<button class="btn btn-outline-secondary" type="button">Chọn</button>
	</div>
	<input type="hidden" name="temp">
	<br>

	<div class="input-group mb-3">
		<span class="input-group-text" id="inputGroup-sizing-default">Tên
			sản phẩm</span> 
			<input type="text" class="form-control"
			aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" name="tenSP" value="${sp.tenSP}" />
	</div>

	<br>

	<div class="input-group mb-3">
		<span class="input-group-text">Giá </span> <input type="number" name="gia"
			class="form-control" aria-label="Amount (to the nearest dollar)" value="${sp.gia}">
		<span class="input-group-text">.000đ</span>
	</div>

	<br>

	<div class="input-group mb-3">
		<span class="input-group-text">Số lượng </span> <input type="number" name="soLuong"
			class="form-control" aria-label="Amount (to the nearest dollar)" value="${sp.soLuong}">
	</div>


	<label>Chọn ảnh</label>
	<div class="input-group mb-3" style="width: 300px">

		<div class="input-group mb-3">
			<button class="btn btn-outline-secondary" type="button"
				id="inputGroupFileAddon03">Ảnh 1</button>
			<input type="file" class="form-control" id="inputGroupFile03"
				aria-describedby="inputGroupFileAddon03" aria-label="Upload">

		</div>

						<br> <br>
						<button
							class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">Thêm
							sản phẩm</button>
					</div>
</form>
