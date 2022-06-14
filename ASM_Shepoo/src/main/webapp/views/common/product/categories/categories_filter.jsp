<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-sm-3 ">

	<ul class="category">
		<li><strong style="font-size: 17px;"> <svg
					xmlns="http://www.w3.org/2000/svg" width="20" height="18"
					fill="currentColor" class="bi bi-list-ul" viewBox="0 0 14 14">
                                                <path
						fill-rule="evenodd"
						d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                            </svg> <a href="#">Tất cả danh
					mục</a>
				<hr width="200px">

		</strong></li>

		<li><a ng-click="filterByType('clothes')">Thời trang</a></li>
		<li><a ng-click="filterByType('shoes')">Giày dép</a></li>
		<li><a ng-click="filterByType('vehicle')">Xe cộ</a></li>
		<li><a ng-click="filterByType('accessory')">Phụ kiện</a></li>

	</ul>

	<ul class="category" style="margin-top: 30px;">
		<li><strong style="font-size: 17px;"> <svg
					xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-filter" viewBox="0 0 14 14  ">
                                                <path
						d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                                            </svg> Thương Hiệu
				<hr width="200px">

		</strong></li>

		<li><a ng-click="checkBrand('Yamaha')"> Yamaha </a></li>
		<li><a ng-click="checkBrand('Nike')"> Nike </a></li>
		<li><a ng-click="checkBrand('Gucci')"> Gucci </a></li>
		<li><a ng-click="checkBrand('Apple')"> Apple </a></li>
		<li>
			<hr width="200px">
		</li>
	</ul>
	<ul>
		<form>
			Tìm Kiếm<br> <br> <input type="text"
				placeholder="Tên sản phẩm" style="width: 220px" ng-model="prodName"
				ng-keyup="findProd()"> <br> <br>

		</form>
	</ul>



</div>