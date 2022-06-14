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
<link rel="icon" href="/images/classify/shopee.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="/css/navbar.css">
<link rel="stylesheet" href="/css/classify.css">
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
	<div class="container-fluid banner" style="height: 420px;">
		<div class="container">
			<br>
			<div class="row">
			
				<%@include file="../../common/product/categories/categories_banner.jsp"%>

				<br> <br>
				<!--content-->
				<div class="container justify-content-center suggest"
					style="margin-top: 30px;">

					<div class="row">
						<!-- filter by categories, brand,... -->
						<%@include file="../../common/product/categories/categories_filter.jsp"%>
		
						
						<div class="col-sm-9">
							<!-- Filter by product -->
							<div class="row">
								<div class="alert alert-secondary text" role="alert">
									Sắp xếp theo
									<button class="btn btn-dark btn-outline-light" type="submit"
										style="background-color: #f94e30 !important;"
										ng-click="filterByType('')">Phổ biến</button>
									<button class="btn btn-light " type="submit"
										ng-click="setOrder('-sold')">Bán chạy</button>
									<button ng-click="setOrderPrice()" id="price"
										class="btn btn-light ">Giá: giảm dần</button>
								</div>
							</div>
							<!--product List-->
							<div class="row">
								<div class="card col-sm-2 product"
									ng-repeat="i in productList |orderBy:order| filter: {type : typeProp, brand : brandProp, name : nameProp }">
									<a href="#!detail/{{i.id}}" class=""> <img
										class="card-img-top" src="/images/product/{{i.img}}"
										alt="Card image cap">
									</a>
									<div class="card-body">
										<p class="card-text">{{i.name}}</p>
										<span class="price">{{i.price | currency:'':3}}đ</span> <span
											class="number">đã bán: {{i.sold/1000}}K</span>

									</div>
								</div>

							</div>
							<!-- paging -->
							<div class="row justify-content-center">
							    <nav aria-label="Page navigation example">
							      <ul class="pagination" style="margin-left: 350px;">
							        <li class="page-item"><a class="page-link" ng-click="first()"><<</a></li>
							        <li class="page-item"><a class="page-link" ng-click="prev()"><</a></li>
							        <li class="page-item"><a class="page-link" ng-click="next()">></a></li>
							        <li class="page-item"><a class="page-link" ng-click="last()">>></a></li>
							        
							      </ul>
							    </nav>
							  </div>
							<!-- ================= -->
						</div>
					</div>
				</div>

				<br> <br> <br> <br>

			</div>
		</div>
		<br> <br>
		<!-- Footer -->
		<%@include file="../../common/product/footer.jsp"%>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/products.js"></script>

	<script src="js/webApp.js"></script>
</body>

</html>