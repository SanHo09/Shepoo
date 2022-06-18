<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shepoo Wakanda| Mua và bán</title>
<link rel="icon" href="/images/classify/shopee.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="/css/navbar.css">
<link rel="stylesheet" href="/css/index.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
	<!--Navbar-->
	<!--Navbar top-->
	<%@include file="../../common/product/header.jsp"%>

	<!--Web content-->
	<!--Banner-->
	<%@include file="../../common/product/index/index_banner.jsp"%>
	<br>
	<br>
	<div class="container justify-content-center suggest"
		style="background-color: white;">
		<span class="category-title"> Gợi ý hôm nay </span>
		<div class="row">

			<!-- product List -->
			<c:forEach items="${sanPhamPage.content}" var="i" varStatus="loop">
				<div class="card col-sm-2 product">

					<a href="/product/detail/${i.maSP}" class=""> <img class="card-img-top"
						src="/images/product/${i.anh1}" alt="Card image cap">
					</a>
					<div class="card-body">

						<p class="card-text">${i.tenSP}</p>
						<span class="price">${i.gia} đ</span> <span
							class="number">đã bán: ${i.soLuongDaBan}</span>

					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<br>
	<br>
	<br>
	<!-- paging -->
	<div class="row justify-content-center">
		<nav aria-label="Page navigation example">
			<ul class="pagination" style="margin-left: 625px;">
				<li class="page-item"><a class="page-link" ng-click="first()"><<</a></li>
				<li class="page-item"><a class="page-link" ng-click="prev()"><</a></li>
				<li class="page-item"><a class="page-link" ng-click="next()">></a></li>
				<li class="page-item"><a class="page-link" ng-click="last()">>></a></li>

			</ul>
		</nav>
	</div>




	<br>
	<br>
	<!-- Footer -->
	<%@include file="../../common/product/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	</script>
</body>

</html>