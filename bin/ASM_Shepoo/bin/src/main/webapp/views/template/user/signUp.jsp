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
    <link rel="icon" href="/images/shopee.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="/css/signIn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="js/angular-route.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-app="myApp">
    <nav class="navbar navbar-light bg-light navbar-expand-lg " id="shopeeNavCenter">
        <div class="container">
            <div class="col-sm-3">
                <a class="navbar-brand" href="#!home" style="color: #f94e30;">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="#f94e30"
                        style="margin-bottom: 20px;" class="bi bi-bag-check-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zm-.646 5.354a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                    </svg>
                    <span style="font-size: 30px; color: #f94e30 !important;">Shepoo</span>
                </a>
                <span style="font-size: 25px; font-weight: 400;">Đăng Ký</span>
            </div>
            <div class="nav-item help">bạn cần giúp đỡ ?</div>
        </div>
    </nav>
    <div class="container-fluid" style="background-color: #f94e30; height: 620px;">
        <div class="row content">
            <div class="col-sm-7">
                <div class="logo d-flex justify-content-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" fill="white"
                        style="margin-bottom: 20px;" class="bi bi-bag-check-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zm-.646 5.354a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                    </svg>
                    <br>
                </div>
                <h1 class="display-2 d-flex justify-content-center">Shepoo</h1>
                <br><br>
                <p class="title text-sm-center">
                    Nền tải thương mại điện tử<br>
                    Yêu thích ở Đông Lào & Wakanda
                </p>
            </div>
            <div class="col-sm-5 justify-content-center">
                <div> 
                  <div ng-controller="signUpCtrl">
                    <form id="frm" class="bg-white login-form" name="frmLogin">
                        <div class="container ">
                            <legend style="margin-top: 10px;">
                                Đăng Ký
                                <svg xmlns="http://www.w3.org/2000/svg" style="margin-left: 100px;" width="50" height="50" fill="currentColor" class="bi bi-qr-code-scan" viewBox="0 0 16 16">
                                    <path d="M0 .5A.5.5 0 0 1 .5 0h3a.5.5 0 0 1 0 1H1v2.5a.5.5 0 0 1-1 0v-3Zm12 0a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0V1h-2.5a.5.5 0 0 1-.5-.5ZM.5 12a.5.5 0 0 1 .5.5V15h2.5a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5v-3a.5.5 0 0 1 .5-.5Zm15 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1 0-1H15v-2.5a.5.5 0 0 1 .5-.5ZM4 4h1v1H4V4Z"/>
                                    <path d="M7 2H2v5h5V2ZM3 3h3v3H3V3Zm2 8H4v1h1v-1Z"/>
                                    <path d="M7 9H2v5h5V9Zm-4 1h3v3H3v-3Zm8-6h1v1h-1V4Z"/>
                                    <path d="M9 2h5v5H9V2Zm1 1v3h3V3h-3ZM8 8v2h1v1H8v1h2v-2h1v2h1v-1h2v-1h-3V8H8Zm2 2H9V9h1v1Zm4 2h-1v1h-2v1h3v-2Zm-4 2v-1H8v1h2Z"/>
                                    <path d="M12 9h2V8h-2v1Z"/>
                                  </svg>
                            </legend>
                            
                            <div class="input-place">
                                <div class="inputGroup">
                                    <input placeholder="Email/Số Điện Thoại/Tên Đăng Nhập" name="txtUserName" ng-model="userName" type="text"  class="form-control" aria-describedby="passwordHelpBlock" form-fmt required> 
                                    <div class="form-text error">
                                        <span id="chkUserName" ng-show="frmLogin.txtUserName.$invalid">Vui lòng nhập tài khoản có độ dài từ 6 ký tự</span>
                                    </div>
                                </div>
                                
                                <div class="inputGroup">
                                    <input placeholder="Họ tên" name="txtFullName" ng-model="fullName" type="text"  class="form-control" aria-describedby="passwordHelpBlock" form-fmt required>
                                    <div class="form-text error">
                                        <span id="chkUserName" ng-show="frmLogin.txtFullName.$invalid">Vui lòng nhập họ tên đúng định dạng</span>
                                    </div>
                                </div>

                                <div class="inputGroup">
                                    <input placeholder="Mật Khẩu" name="txtPassword" type="password" ng-model="password"  class="form-control" aria-describedby="passwordHelpBlock" form-fmt required>
                                    <div  class="form-text error">
                                        <span ng-show="frmLogin.txtPassword.$invalid">Vui lòng nhập mật khẩu có độ dài từ 6 ký tự</span>
                                    </div>
                                </div>

                                <div class="inputGroup">
                                  <input placeholder="Nhập Lại Mật Khẩu" name="txtConFirmPassword" type="Password" ng-model="confirmPassword"  class="form-control" aria-describedby="passwordHelpBlock" form-fmt required>
                                  <div  class="form-text error">
                                      <span ng-show="frmLogin.txtConFirmPassword.$invalid">Vui lòng nhập lại mật khẩu</span>
                                  </div>
                              </div>
                                
                                <button class="btn-lg btn-block col-sm-12 sign-in" ng-click="signUp()">Đăng Nhập</button>
                                <small id="loginFm" style="color: #f94e30; display: none;">Tài khoản đã tồn tại</small>
                                
                                
                                <div class="signUp text-center">
                                    <span>Đã có tài khoản <a href="#!signIn">Đăng Nhập</a></span>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                  <div class="modal-body">
                                    <div class="input-group mb-3">
                                      <input type="text" class="form-control" placeholder="Nhập tài khoản" aria-label="Recipient's username" aria-describedby="button-addon2">
                                      <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
                                    </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                    <button type="button" class="btn btn-primary">Xác nhận</button>
                                  </div>
                                </div>
                              </div>
                            </div>

                            
                        </div>
                    </form>
                  </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
  <footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
      <!-- Left -->
      <div class="me-5 d-none d-lg-block">
        <h2 class="display-6">Sheepo gì cũng có, mua hết ở tiki</h2>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold mb-4">
              <i class="fas fa-gem me-3"></i>SHEPOO
            </h6>
            <p>
              Shepoo - ứng dụng mua sắm trực tuyến thú vị,
              tin cậy, an toàn và miễn phí! Shepoo là nền tảng giao dịch trực tuyến
              hàng đầu ở Wakanda. Với sự đảm bảo của Shepoo, bạn sẽ mua hàng trực tuyến an tâm và nhanh chóng hơn bao
              giờ hết!
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Về shepoo
            </h6>
            <p>
              <a href="#!" class="text-reset">Giới thiệu về shepoo</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Tuyển dụng</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Chính sách và bảo mật</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Kênh người bán</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Thanh Toán
            </h6>
            <p>
              <a href="#!" class="text-reset">Agribank</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Mb Bank</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Visa card</a>
            </p>
            <p>
              <a href="#!" class="text-reset">TP bank</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Contact
            </h6>
            <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-house-door-fill" viewBox="0 0 16 16">
                <path
                  d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
              </svg> New York, NY 10012, US</p>
            <p>
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-mailbox"
                viewBox="0 0 16 16">
                <path
                  d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z" />
                <path
                  d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854zM5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z" />
              </svg>
              info@example.com
            </p>
            <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-telephone-fill" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
              </svg> + 01 234 567 88</p>
            <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-telephone-fill" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
              </svg> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
      © 2022 Copyright:
      <a class="text-reset fw-bold" href="#">Sheepo.com</a>
    </div>
    <!-- Copyright -->
  </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/webApp.js"></script>
    
</body>

</html>