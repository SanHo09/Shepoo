<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="/addTocard/${product.maSP}">
	<div class="row product-image"
		style="height: 700px; background-color: white;">
		<div class="col-sm-5">
			<div class="row">
				<img src="/images/product/${product.anh1 }" alt=""
					class="products col-sm-12">
			</div>
			<div class="row product-detail">
				<fieldset class="justify-content-center">
					<img src="/images/product/chitietAoKhoac1.jpg" class=" col-sm-3">
					<img src="/images/product/chitietAoKhoac2.jpg" class=" col-sm-3">
					<img src="/images/product/chitietAoKhoac3.jpg" alt=""
						class=" col-sm-3"> <img
						src="/images/product/chitietAoKhoac4.jpg" alt="" class=" col-sm-3">
				</fieldset>
			</div>
		</div>
		<div class="col-sm-7" style="margin-top: 20px;">
			<div class="row product-title">
				<legend>
					<span class="badge bg-danger"> New</span> ${product.tenSP}
				</legend>
			</div>
			<div class="row data">
				<span class="rate"> <span class="for-number">${product.rate}</span>
					<i class="fa fa-star rating-color"></i> <i
					class="fa fa-star rating-color"></i> <i
					class="fa fa-star rating-color"></i> <i
					class="fa fa-star rating-color"></i> <i
					class="fa fa-star rating-color"></i> | <span class="for-number">214</span>
					<span class="for-title">Đánh Giá</span> | <span class="for-number">747</span>
					<span class="for-title">Đã bán</span>
				</span>
			</div>
			<div class="row price-place">
				<div class="col-sm-12">
					<strike class="promotion"><span style="font: smaller;">đ</span>200.000</strike>
					<span class="price"> <span class="for-number"
						style="text-decoration: underline;">đ</span> ${product.gia }
					</span>
				</div>
			</div>
			<div class="row transport-place">
				<div class="col-sm-2">Vận chuyển</div>
				<div class="col-sm-10">
					<i class="fa fa-car"></i> Vận chuyển tới <select
						class="transport-to" aria-label="Default select example">
						<option selected>Ninh Bình</option>
						<option value="1">Hà Nội</option>
						<option value="2">TP HCM</option>
						<option value="3">Lâm Đồng</option>
					</select>
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-10" style="margin-left: 150px;">

					Phí vận chuyển <select class="transport-to"
						aria-label="Default select example">
						<option selected>Nhanh</option>
						<option value="1">Hỏa tốc</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
				</div>
			</div>

			<div class="property">
				<div class="row">
					<div class="col-sm-2">Màu Sắc</div>
					<div class="col-sm-10">
						<button type="button" class="btn ">Đen</button>
						<button type="button" class="btn ">Trắng</button>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2">Size</div>
					<div class="col-sm-10">
						<button type="button" class="btn ">S < 45Kg</button>
						<button type="button" class="btn ">M < 55Kg</button>
						<button type="button" class="btn ">L < 65Kg</button>
						<button type="button" class="btn ">XL < 75Kg</button>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2">Số lượng</div>
					<div class="col-sm-10">
						<div class="input-group" style="width: 175px;">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon1">-</button>
							<input type="number" min="1" max="100" ng-model="number"
								class="form-control" id="num" placeholder="1"
								aria-label="Example text with button addon"
								aria-describedby="button-addon1">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon1">+</button>

						</div>
						<br> <span class="availabel"> ${product.soLuong } Sản
							phẩm có sẵn</span>
					</div>
				</div>



			</div>
			<div class="button-group-add">
				<button class="add-to-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal" >
					<i class="fa fa-cart-plus"></i>Thêm vào giỏ hàng
				</button>

				<button formaction="/buynow/${product.maSP}" class="buy-now">Mua Ngay</button>

			</div>
		</div>

	</div>
</form>