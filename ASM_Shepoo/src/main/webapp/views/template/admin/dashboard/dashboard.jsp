<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Thống kê</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/ample-admin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/plugins/images/favicon.png">
<!-- Custom CSS -->
<link href="plugins/bower_components/chartist/dist/chartist.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
<!-- Custom CSS -->
<link href="/css/style.min.css" rel="stylesheet">
</head>

<body>

	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<!-- Header -->
		<%@include file="../../../common/admin/header.jsp"%>
		<!-- Aside -->
		<%@include file="../../../common/admin/aside.jsp"%>

		<div class="page-wrapper">
			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Thống Kê</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<div class="d-md-flex">
							<ol class="breadcrumb ms-auto">
								<li><a href="#" class="fw-normal">Thống Kê</a></li>
							</ol>
							<a href="https://www.wrappixel.com/templates/ampleadmin/"
								target="_blank"
								class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">Trang
								chủ</a>
						</div>
					</div>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="container-fluid">
			<!-- Total stuffs -->
				<%@include file="./total_stuff.jsp"%>
				<!-- Table -->
				<%@include file="./table.jsp"%>
				
				<div class="row">
				<!-- Comment-->
					<%@include file="./comment.jsp"%>
					<!-- Top product -->
					<%@include file="./top_selled.jsp"%>
				</div>
			</div>
			
			<footer class="footer text-center">
				2021 © Ample Admin brought to you by <a
					href="https://www.wrappixel.com/">wrappixel.com</a>
			</footer>

		</div>
		<!-- ============================================================== -->

	</div>


	<script src="/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/js/app-style-switcher.js"></script>
	<script
		src="/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<!--Wave Effects -->
	<script src="/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="/js/custom.js"></script>
	<!--This page JavaScript -->
	<!--chartis chart-->
	<script src="/plugins/bower_components/chartist/dist/chartist.min.js"></script>
	<script
		src="/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
	<script src="/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>