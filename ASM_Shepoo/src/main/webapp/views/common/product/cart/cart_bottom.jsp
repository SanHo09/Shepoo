<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container position-sticky" id="cartBottom">
	<form method="POST">
		<table class="table">
			<tr>
				<td><a href="#" class="shepooVoucher"
					style="color: black; font-size: 18px;"><svg
							xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="#f94e30" class="bi bi-ticket-perforated"
							viewBox="0 0 16 16">
                <path
								d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z" />
                <path
								d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z" />
                </svg> Shepoo Voucher </a> <a href="#"
					class="text-decoration-none selectVoucher">Chọn hoặc nhập mã</a></td>
			</tr>

			<tr>
				<td><a href="/cart/clear"
					style="color: black; font-size: 20px; margin-left: 20px;">Xóa
						giỏ hàng</a> <span class="pay">Tổng thanh toán (${count} Sản
						phẩm):<span style="color: #f94e30;"><fmt:formatNumber
								type="number"> ${total}</fmt:formatNumber></span>
				</span>
					<button id="btnPay" formaction="/cart/thanhToan">Mua Hàng</button></td>
			</tr>
		</table>
	</form>
</div>