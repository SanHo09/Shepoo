<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row"">
	<div class="col-md-12 col-lg-12 col-sm-12">
		<div class="white-box">
			<div class="d-md-flex mb-3">
				<h3 class="box-title mb-0">Danh Sách sản phẩm</h3>

			</div>
			<div class="table-responsive">
				<table class="table no-wrap">
					<thead>
						<tr>
							<th class="border-top-0">#</th>
							<th class="border-top-0">Tên Sản phẩm</th>
							<th class="border-top-0">Giá bán</th>
							<th class="border-top-0">Số người mua</th>
							<th class="border-top-0">Thao tác</th>
						</tr>
					</thead>
					<c:forEach items="${sanPhamPage.content}" var="i" varStatus="loop">
						<tbody>
							<tr>
								<td>${i.maSP}</td>
								<td class="txt-oflo">${i.tenSP}</td>
								<td>${i.gia}</td>
								<td class="txt-oflo">${i.soLuongDaBan}</td>
								<td><span class="text-success">
										<a href="/admin/updateProduct/${i.maSP}">Sửa</a>
										<button>Xóa</button>
								</span></td>
							</tr>
	
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>