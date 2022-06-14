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
<title>Document</title>
<link rel="icon" href="/images/classify/shopee.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="/css/navbar.css">
<link rel="stylesheet" href="/css/detail.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
	<div ng-controller="detailCtrl">
		<%@include file="../../common/product/header.jsp"%>

		<br> <br>
		<!--Content-->
		<div class="container">
			<!-- Product Form -->
			<%@include file="../../common/product/detail/product_form.jsp"%>
		</div>

		<br>
		<!-- more Detail -->
		<%@include file="../../common/product/detail/product_content.jsp"%>
		<!-- comment -->
		<%@include file="../../common/product/detail/comment.jsp"%>
		<br> <br>

		<!-- footer -->
		<%@include file="../../common/product/footer.jsp"%>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

</html>