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
  <title>Shepoo Wakanda| Mua và bán</title>
  <link rel="icon" href="/images/shopee.png" type="image/gif" sizes="16x16">
  <link rel="stylesheet" href="/css/navbar.css">
  <link rel="stylesheet" href="/css/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
  <!--Navbar-->
  <!--Navbar top-->
  <%@include file="../../common/product/header.jsp" %>

  <!--Web content-->
  <!--Banner-->
  <div class="container-fluid banner" style="background-color: white; height: 400px;">
    <div class="container">
      <br>
      <div class="row">
        <div class="col-sm-7">
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/images/banner/banner1.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="/images/banner/banner_classify6.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="/images/banner/banner2.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="row banner-top">
            <img src="/images/banner/banner_top.jpg" width="100%" height="125px" alt="">
            <img src="/images/banner/banner_bottom.jpg" width="100%" height="125px" srcset="">
          </div>
        </div>

        <nav class="nav justify-content-center topCategory" id="topCategory">
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/mask.jpg" width="60px" height="60px">
              Bảo vệ sức khỏe
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/freeship.png" width="60px" height="60px">
              FREESHIP lên đến 100k
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/promotion.jpg" width="60px" height="60px">
              Khuyến mãi lên đến 50%
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/international.png" width="60px" height="60px">
              Hàng quốc tế
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/smartPhone.png" width="60px" height="60px">
              Nạp thẻ điện thoại
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/voucher.jpg" 60px" height="60px">
              Tặng voucher mua hàng
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/computer.png" width="60px" height="60px">
              Siêu thị điện tử
            </div>
          </a>
          <a class="nav-link" href="#!classify">
            <div class="card text-center align-items-center">
              <img src="/images/classify/food.png" width="60px" height="60px">
              Sheepo Food
            </div>
          </a>


        </nav>
      </div>
    </div>
  </div>
  <br>
  <br>
  <!--category-->
  <div class="container justify-content-center category" style="background-color: white; height: 300px;">
    <span class="category-title">
      DANH MỤC
    </span>
    <br>
    <div class="row justify-content-center">
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/clothes.png" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Áo Nam
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/shoes.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Giày Nam
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/iphone.jpg" height="64px" alt="" srcset="" style="margin: 10px;">
          Điện thoại
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/watch.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Đồng hồ
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/manHinh.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Linh kiện máy tính
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/laptop.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Laptop/PC
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/mayAnh.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Máy ảnh
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/xeMay.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Các loại xe
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/Bong.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Thể thao
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/toys.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Đồ Chơi
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/bed.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Giường
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/bepga.png" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Bếp gas
        </a>
      </div>

    </div>

    <div class="row justify-content-center">
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/cothesFemale.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Áo Nữ
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/myPham.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Mỹ Phẩm
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/son.jpg" height="64px" alt="" srcset="" style="margin: 10px;">
          Son
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/doDungHocTap.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Đồ dùng học tập
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/Thuoc.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Sức khỏe
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/sach.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Sách
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/viNu.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Ví, cặp sách
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify/clothes">
          <img src="/images/classify/noi.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Đồ nội chợ
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify">
          <img src="/images/classify/figure.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Mô hình
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify">
          <img src="/images/classify/gaming.png" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Tai nghe
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify">
          <img src="/images/classify/tayCam.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Gaming
        </a>
      </div>
      <div class="card col-sm-1 text-center">
        <a href="#!classify">
          <img src="/images/classify/xeDap.jpg" width="64px" height="64px" alt="" srcset="" style="margin: 10px;">
          Xe Đạp
        </a>
      </div>
      <br>

    </div>

  </div>
  <br><br>
  <div class="container justify-content-center suggest" style="background-color: white;">
    <span class="category-title">
      Gợi ý hôm nay
    </span>
    <div class="row">
      
      <div class="card col-sm-2 product" ng-repeat="i in productList | limitTo:12:begin | filter: {name: prodName}">
        
        <a href="#!detail/{{i.id}}" class="">
          <img class="card-img-top" src="images/product/{{i.img}}" alt="Card image cap">
        </a>
        <div class="card-body">
   
          <p class="card-text">{{i.name}}</p>
          <span class="price">{{i.price | currency:'':3}}đ</span> 
          <span class="number">đã bán: {{i.sold/1000}}K</span>
          
        </div>
      </div>
    </div>
    </div>
    <br>
  <br>
  <br>
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
  <%@include file="../../common/product/footer.jsp" %>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

  <script src="js/webApp.js">
      
  </script>
</body>

</html>