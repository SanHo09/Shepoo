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
<link rel="icon" href="images/shopee.png" type="image/gif" sizes="16x16">
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
	

		<%@include file="../../common/product/header.jsp" %>
		<!--Web content-->
		<!--Banner-->
		<div class="container-fluid banner" style="height: 420px;">
			<div class="container">
				<br>
				<div class="row">
					<div class="col-sm-12">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="3" aria-label="Slide 4"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="4" aria-label="Slide 5"></button>
							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/images/banner/banner_classify1.png"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/banner/banner_classify2.png"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/banner/banner_classify3.png"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/banner/banner_classify4.png"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/banner/banner_classify5.png"
										class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>




					<br>
					<br>
					<!--content-->
					<div class="container justify-content-center suggest"
						style="margin-top: 30px;">

						<div class="row">
							<div class="col-sm-3 ">

								<ul class="category">
									<li><strong style="font-size: 17px;"> <svg
												xmlns="http://www.w3.org/2000/svg" width="20" height="18"
												fill="currentColor" class="bi bi-list-ul"
												viewBox="0 0 14 14">
                                                <path
													fill-rule="evenodd"
													d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                            </svg> Tất cả danh mục
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
												fill="currentColor" class="bi bi-filter"
												viewBox="0 0 14 14  ">
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
										Tìm Kiếm<br>
										<br> <input type="text" placeholder="Tên sản phẩm"
											style="width: 220px" ng-model="prodName"
											ng-keyup="findProd()"> <br>
										<br>

									</form>
								</ul>



							</div>


							<!--product List-->
							<div class="col-sm-9">
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
							</div>
						</div>
					</div>

					<br> <br> <br> <br>	

				</div>
			</div>
			<br> <br>
			<!-- Footer -->
			<%@include file="../../common/product/footer.jsp" %>
			
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
		<script src="js/products.js"></script>

		<script src="js/webApp.js"></script>
</body>

</html>