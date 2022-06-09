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
    <title>Document</title>
    <link rel="icon" href="images/shopee.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="/css/navbar.css">
    <link rel="stylesheet" href="/css/detail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
    <div ng-controller="detailCtrl">
    <%@include file="../../common/product/header.jsp" %>
    
    <br>
    <br>
    <!--Content-->
    <div class="container">
        <div class="row product-image" style="height: 700px; background-color: white;">
            <div class="col-sm-5">
                <div class="row">
                    <img src="/images/product/{{img}}" alt="" class="products col-sm-12">
                </div>
                <div class="row product-detail">
                    <fieldset class="justify-content-center">
                        <img src="/images/product/chitietAoKhoac1.jpg" class=" col-sm-3" >
                        <img src="/images/product/chitietAoKhoac2.jpg" class=" col-sm-3" >
                        <img src="/images/product/chitietAoKhoac3.jpg" alt="" class=" col-sm-3" >
                        <img src="/images/product/chitietAoKhoac4.jpg" alt="" class=" col-sm-3" >
                    </fieldset>
                </div>
            </div>
            <div class="col-sm-7" style="margin-top: 20px;">
                <div class="row product-title">
                    <legend><span class="badge bg-danger"> New</span> {{name}}</legend>
                </div>
                <div class="row data">
                    <span class="rate">
                        <span class="for-number">4.9</span>
                        <i class="fa fa-star rating-color"></i>
                        <i class="fa fa-star rating-color"></i>
                        <i class="fa fa-star rating-color"></i>
                        <i class="fa fa-star rating-color"></i>
                        <i class="fa fa-star rating-color"></i>
                        | 
                        <span class="for-number">214</span> <span class="for-title">Đánh Giá</span>
                        |
                        <span class="for-number">747</span> <span class="for-title">Đã bán</span>
                    </span>
                </div>
                <div class="row price-place">
                    <div class="col-sm-12">
                        <strike class="promotion"><span style="font: smaller;">đ</span>200.000</strike>
                        <span class="price">
                            <span class="for-number" style="text-decoration: underline;">đ</span>
                            {{price | currency:'':3 }}
                        </span>
                    </div>
                </div>
                <div class="row transport-place">
                    <div class="col-sm-2">
                        Vận chuyển
                    </div>
                    <div class="col-sm-10">
                        <i class="fa fa-car"></i>
                        Vận chuyển tới
                        <select class="transport-to" aria-label="Default select example">
                            <option selected>Ninh Bình</option>
                            <option value="1">Hà Nội</option>
                            <option value="2">TP HCM</option>
                            <option value="3">Lâm Đồng</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        
                    </div>
                    <div class="col-sm-10" style="margin-left: 150px;">
                       
                        Phí vận chuyển
                        <select class="transport-to" aria-label="Default select example">
                            <option selected>Nhanh</option>
                            <option value="1">Hỏa tốc</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                </div>

                <div class="property">
                    <div class="row">
                        <div class="col-sm-2">
                            Màu Sắc
                        </div>
                        <div class="col-sm-10" >
                            <button type="button" class="btn ">Đen</button>
                            <button type="button" class="btn ">Trắng</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2">
                            Size
                        </div>
                        <div class="col-sm-10" >
                            <button type="button" class="btn ">S < 45Kg</button>
                            <button type="button" class="btn ">M < 55Kg</button>
                            <button type="button" class="btn ">L < 65Kg</button>
                            <button type="button" class="btn ">XL < 75Kg</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2">
                            Số lượng
                        </div>
                        <div class="col-sm-10" >
                            <div class="input-group" style="width: 175px;">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon1">-</button>
                                <input type="number" min="1" max="100" ng-model="number" class="form-control" id="num" placeholder="1" aria-label="Example text with button addon" aria-describedby="button-addon1">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon1">+</button>
                                
                            </div>
                            <br>
                            <span class="availabel"> 910 Sản phẩm có sẵn</span>
                        </div>
                    </div>


                    
                </div>
                <div class="button-group-add">
                    <button class="add-to-card" data-bs-toggle="modal" data-bs-target="#exampleModal" ng-click="addToCard()" >
                        <i class="fa fa-cart-plus"></i>Thêm vào giỏ hàng
                    </button>
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            
                            <div class="modal-body">
                                <table class="table">
                                    <thead>
                                      <tr>
                                        <th scope="col">Sản phẩm</th>
                                        <th scope="col">Giá</th>
                                        <th scope="col">Số Lượng</th>
                                        <th scope="col">Tổng</th>
                                        <th scope="col"></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr ng-repeat="i in cart">
                                        <th>{{i.name}}</th>
                                        <td>{{i.price}}</td>
                                        <td>{{i.number}}</td>
                                        <td>{{i.price*i.number | currency:"":3}}đ</td>
                                        <td><button class="btn btn-light" ng-click="delete($index)">Xóa</button></td>
                                      </tr>
                                      
                                      <tr>
                                          <th colspan="4" style="color: #f94e30;">Thành Tiền: {{amout|currency:"":3}}đ</th>
                                      </tr>
                                    </tbody>
                                  </table>
                                  
                                  <button class="buy-now">
                                    Mua Ngay
                                </button>
                            </div>
                            
                          </div>
                        </div>
                      </div>
                    <button class="buy-now">
                        Mua Ngay
                    </button>
                
                </div>
            </div>
            
        </div>
    </div>
    <br>
    <div class="container productDetail" style="height: 500px; background-color: white;">
        <div class="row productDetail-title align-middle">
            <span>CHI TIẾT SẢN PHẨM</span>
        </div>
        <div class="row">
            <div class="col-sm-2">Danh mục</div>
            <div class="col-sm-10">{{type}}</div>
        </div>
        <div class="row">
            <div class="col-sm-2">Nhà sản xuất</div>
            <div class="col-sm-10">{{brand}}</div>
        </div>
        <div class="row">
            <div class="col-sm-2">Đã bán</div>
            <div class="col-sm-10">{{sold}}</div>
        </div>
        <div class="row note">
            Ghi chú: Các khách mới mua 1k nếu size bạn cần đã hết slot 1k thì bạn có thể chọn phân loại size khác mua được với giá 1k rùi nhắn tin cho bên mình để đổi size nha
            <br>
            Quần ống rộng suông lưng cao chất tuyết mưa SM QD01
            <br>
            SM STORE là thương hiệu đi liền với chất lượng, giá cả phải chăng. Luôn mang đến cho khách hàng mọi ưu đãi và trải nghiệm tốt nhất.
            <br>
            quần ống rộng suông lưng cao chất tuyết mưa :
        </div>
    </div>
    
    <br>
    <br>

	<!-- footer -->
    <%@include file="../../common/product/footer.jsp" %>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>