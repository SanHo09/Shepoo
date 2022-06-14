<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shepoo Wakanda| Giỏ Hàng</title>
  <link rel="icon" href="/images/classify/shopee.png" type="image/gif" sizes="16x16">
  <link rel="stylesheet" href="/css/navbar.css">
  <link rel="stylesheet" href="/css/cart.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
  
  <div ng-controller="myCtrl">
  
  <!--Navbar-->
  	<%@include file="../../common/product/cart/cart_header.jsp"%>
  

  <!--Web content-->
  
  <br>
  <div class="container justify-content-center suggest" style="background-color: white;">
    <table class="table " >
      <thead>
        <td>Sản phẩm</td>
        <td>Đơn giá</td>
        <td>Số lượng</td>
        <td>Số Tiền</td>
        <td>Thao Tác</td>
      </thead>
      <tbody>
      	<%@include file="../../common/product/cart/cart_content.jsp" %>
      </tbody>
    </table>
    
    <%@include file="../../common/product/cart/cart_bottom.jsp" %>
  </div>
  
  <br>
  <br>
  <!-- Footer -->
  <%@include file="../../common/product/footer.jsp" %>
  
</div>  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

  <script src="js/webApp.js">
      
  </script>
</body>

