<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form:form action="admin/updateProduct" modelAttribute="sanpham">
<div class="input-group">
	<select class="form-select" id="inputGroupSelect04"
		aria-label="Example select with button addon">
		<c:forEach items="${loaiSanPham }" var="item" varStatus="loop">
			<option values="maLSP">${item.tenLSP}</option>
		</c:forEach>
	</select>
	<button class="btn btn-outline-secondary" type="button">Chọn</button>
</div>

<br>

<div class="input-group mb-3">
	<span class="input-group-text" id="inputGroup-sizing-default">Tên
		sản phẩm</span> <input type="text" class="form-control"
		aria-label="Sizing example input"
		aria-describedby="inputGroup-sizing-default" value="${sp.tenSP}"></div>
<br>
<div class="input-group mb-3">
	<span class="input-group-text">Giá </span> <input type="text"
		class="form-control" aria-label="Amount (to the nearest dollar)" value="${sp.gia}">
	<span class="input-group-text" >.000đ</span>
</div>

<br>

<div class="input-group mb-3">
	<span class="input-group-text">Giá </span> <input type="text"
		class="form-control" aria-label="Amount (to the nearest dollar)" value="${sp.gia}">
	<span class="input-group-text">.000đ</span>
</div>


<label>Chọn ảnh</label>
<div class="input-group mb-3" style="width: 300px">

	<div class="input-group mb-3">
		<button class="btn btn-outline-secondary" type="button"
			id="inputGroupFileAddon03">Ảnh 1</button>
		<input type="file" class="form-control" id="inputGroupFile03"
			aria-describedby="inputGroupFileAddon03" aria-label="Upload">

	</div>

	<div class="input-group mb-3" style="width: 300px">

		<div class="input-group mb-3">
			<button class="btn btn-outline-secondary" type="button"
				id="inputGroupFileAddon03">Ảnh 2</button>
			<input type="file" class="form-control" id="inputGroupFile03"
				aria-describedby="inputGroupFileAddon03" aria-label="Upload">

		</div>

		<div class="input-group mb-3" style="width: 300px">

			<div class="input-group mb-3">
				<button class="btn btn-outline-secondary" type="button"
					id="inputGroupFileAddon03">Ảnh 3</button>
				<input type="file" class="form-control" id="inputGroupFile03"
					aria-describedby="inputGroupFileAddon03" aria-label="Upload">

			</div>

			<div class="input-group mb-3" style="width: 300px">

				<div class="input-group mb-3">
					<button class="btn btn-outline-secondary" type="button"
						id="inputGroupFileAddon03">Ảnh 4</button>
					<input type="file" class="form-control" id="inputGroupFile03"
						aria-describedby="inputGroupFileAddon03" aria-label="Upload">

				</div>

				<div class="input-group mb-3" style="width: 300px">

					<div class="input-group mb-3">
						<button class="btn btn-outline-secondary" type="button"
							id="inputGroupFileAddon03">Ảnh 5</button>
						<input type="file" class="form-control" id="inputGroupFile03"
							aria-describedby="inputGroupFileAddon03" aria-label="Upload">


					</div>
					</form:form>
					<br>
					<br>
					<button
						class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white" formaction="admin/updateProduct">Cập nhật sản phẩm</button>
				</div>