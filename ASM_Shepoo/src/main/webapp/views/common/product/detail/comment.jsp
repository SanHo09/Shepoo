<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container mt-5">

	<div class="row  d-flex justify-content-center">
		<div class="col-md-12">
			<div
				class="headings d-flex justify-content-between align-items-center mb-3">
				<h5>Comment: ${binhLuanQuantity}</h5>
				<div class="buttons">
					<span class="badge bg-white d-flex flex-row align-items-center">
						<span class="text-primary">Comments "ON"</span>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox"
								id="flexSwitchCheckChecked" checked>
						</div>
					</span>
				</div>
			</div>
			
			<<c:forEach var="item" items="${bl}">
				<c:choose>
					<c:when test="${ item.maBL == maBinhLuan}">
						<div class="card p-3">
							<form:form action="/product/detail/update/${item.maBL}">
								<div class="d-flex justify-content-between align-items-center">
									<div class="user d-flex flex-row align-items-center">

										<img src="https://i.imgur.com/hczKIze.jpg" width="30"
											class="user-img rounded-circle mr-2"> <span> <small
											class="font-weight-bold text-primary">${tenND}</small> <input
											name="noiDung" value="${noiDung}" style="margin-left: 40px">
											<select name="danhGia">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
										</select>
										</span>
									</div>
								</div>
								<button>Sửa Bình Luận</button>
							</form:form>
						</div>
					</c:when>

					<c:otherwise>
						<div class="card p-3">
							<div class="d-flex justify-content-between align-items-center">
								<div class="user d-flex flex-row align-items-center">

									<img src="https://i.imgur.com/hczKIze.jpg" width="30"
										class="user-img rounded-circle mr-2"> <span> <small
										class="font-weight-bold text-primary">${item.nguoiDung.tenNguoiDung}</small>
										<small class="font-weight-bold">${item.noiDung}</small>
									</span>
								</div>
								<small>${item.ngayBL}</small>
							</div>

							<div
								class="action d-flex justify-content-between mt-2 align-items-center">
								<div class="reply px-4">
									<c:if test="${item.nguoiDung.maND == sessionScope.userId}">
										<small> <a href="/product/detail/delete/${item.maBL}">Remove</a>
										</small>
										<small> <a href="/product/detail/edit/${item.maBL}">Edit</a>
										</small>
										<span class="dots"></span>
										<small>Reply</small>
									</c:if>
								</div>

								<div class="icons align-items-center">
									<c:forEach begin="1" end="${item.danhGia}">
										<i class="fa fa-star text-warning"></i>
									</c:forEach>
									<i class="fa fa-check-circle-o check-icon"></i>
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</c:forEach> 

			<!-- 		Them binh luan -->
			<c:if test="${sessionScope.uname != null}">
				<div class="card p-3">
					<form:form action="/product/detail/create/${product.maSP }">
						<div class="d-flex justify-content-between align-items-center">
							<div class="user d-flex flex-row align-items-center">
	
								<img src="https://i.imgur.com/hczKIze.jpg" width="30"
									class="user-img rounded-circle mr-2"> <span> <small
									class="font-weight-bold text-primary">${tenND}</small> <input
									name="noiDung" style="margin-left: 40px"> <select
									name="danhGia">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
								</select>
								</span>
							</div>
						</div>
						<button  class="btn btn-primary outline-none" style="margin: 30px">Gửi Bình Luận</button>
					</form:form>
				</div>
			</c:if>
		</div>
	</div>
</div>