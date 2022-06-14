<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập | Shepoo</title>
    <link rel="icon" href="/images/classify/shopee.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="/css/signIn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="js/angular-route.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
    <!-- navbar -->
    <%@include file="../../common/user/navbar.jsp" %>
    <div class="container-fluid" style="background-color: #f94e30; height: 620px;">
        <div class="row content">
            <!-- banner -->
            <%@include file="../../common/user/banner.jsp" %>
            <div class="col-sm-5 justify-content-center">
                <div> 
                  <div ng-controller="signUpCtrl">
                    	<!--  Form -->
                   	 <%@include file="../../common/user/signUp/signUp_form.jsp" %>
                  </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
   
  <%@include file="../../common/product/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/webApp.js"></script>
    
</body>

</html>