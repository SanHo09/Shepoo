<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- foreach to load -->
<c:forEach items="${chiTietGioHang}" var="i" varStatus="loop">
	<tr>
		<td>
			<div class="row">
				<div class="col-2">
					<img src="/images/product/${i.sanPham.anh1}" width="100px"
						height="100px">
				</div>
				<div class="col-10">
					<span style="margin-left: 10px">${i.sanPham.tenSP }</span>

				</div>
			</div>
		</td>

		<td><fmt:formatNumber type="number">${i.sanPham.gia }</fmt:formatNumber>
		</td>
		<td>
			<form action="/cart/update" method="GET">
				<input type="number" onblur="this.form.submit()" min="0"
					name="quantity" value="${i.soLuongMua }"
					style="width: 80px; text-align: center;">
			</form>
		</td>

		<td style="color: #f94e30;"><fmt:formatNumber type="number">
	          			 ${i.sanPham.gia * i.soLuongMua }
	          		 </fmt:formatNumber></td>

		<td style="cursor: pointer;"><a href="/cart/remove/${i.maCTGH}">Xóa</a></td>
	</tr>
</c:forEach>
<tr>
	<td colspan="5"><a href="#" style="color: #f94e30;"><svg
				xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-ticket-perforated"
				viewBox="0 0 16 16">
            <path
					d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z" />
            <path
					d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z" />
            </svg> Sử dụng voucher </a></td>
</tr>