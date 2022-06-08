var app = angular.module("myApp", ["ngRoute"]);

var user = "";
app.config(function($routeProvider){
    $routeProvider
    .when("/home", {
        templateUrl: "index.html",
        controller: "myCtrl"
    })
    .when("/signIn", {
        templateUrl: "signIn.html",
        controller: "signInCtrl"
    })
    .when("/signUp", {
        templateUrl: "signUp.html",
        controller: "signUpCtrl"
    })
    .when("/classify/:id", {
        templateUrl: "classify.html",
        controller: "classifyCtrl"
    })
    .when("/detail/:id", {
        templateUrl: "detail.html",
        controller: "detailCtrl"
    })
    .otherwise({
        redirectTo: "/home"
    })
});

app.controller("myCtrl" ,function($scope, $http) {
    // load product
    $scope.user = user;
    
   
    $scope.productList = productList;
    
    
    // pagination
    $scope.begin = 0;
    $scope.pageCount = Math.ceil(productList.length/12);
    console.log('pageCount'+$scope.pageCount);
    $scope.first = function() {
        $scope.begin = 0;
    }
    
    $scope.prev = function() {
        if($scope.begin>0) {
          $scope.begin -= 12;
        }
    }

    $scope.next = function() {
        if($scope.begin < ($scope.pageCount-1)*12) {
            $scope.begin += 12;
        }
        
        
    }

    $scope.last = function() {
      $scope.begin = ($scope.pageCount-1)*12;
    }

    $scope.findProd =function() {
        $scope.nameProp = $scope.prodName;
    }
});

app.controller("signUpCtrl", function($scope) {
    $scope.signUp = function() {
        $scope.flag = true;
        var userName = $scope.userName;
        var fullName = $scope.fullName;
        var password = $scope.password;
        var confirmPassword = $scope.confirmPassword;
        for(let i=0;i<userList.length;i++) {
            if(userList[i].userName==userName) {
                $scope.flag = false;
                document.getElementById("loginFm").innerHTML = "Tài khoản đã tồn tại";
                break;
            }
        }
        if(confirmPassword!=password) {
            $scope.flag = false;
            document.getElementById("loginFm").innerHTML = "2 mật khẩu không trùng nhau";
        }
        if($scope.flag===true) {
            let currentUser = {
                "userName" : userName,
                "password" : password,
                "fullName" : fullName

            };
            userList.push(currentUser);
            alert("Đăng ký thành công")
            window.location.replace("#!signIn");
            document.getElementById("loginFm").style.display = "none";
        } else {
            document.getElementById("loginFm").style.display = "block";
            
        }
    }

    
});


app.controller("classifyCtrl", function($scope, $routeParams) {
    $scope.user = user;
    $scope.productList = productList;
    $scope.typeProp = "";
    $scope.order = "-price";
    $scope.flag = true;
    if($routeParams.id!="") {
        $scope.typeProp = $routeParams.id;
        console.log($routeParams.id);
    } 

    $scope.filterByType = function(prop) {
        if(prop=='') {
            $scope.order = "name";
        }
        $scope.typeProp = prop;
        $scope.brandProp = "";
    };
    $scope.setOrder = function(prop) {
        $scope.order = prop;
    }
    $scope.setOrderPrice = function() {
        if($scope.flag==true) {
            $scope.order = "price";
            document.getElementById("price").innerHTML = "Giá: Tăng dần";
            $scope.flag = false;
        } else {
            $scope.order = "-price";
            document.getElementById("price").innerHTML = "Giá: Giảm dần";
            $scope.flag=true
        }
    }

    $scope.checkBrand = function(prop) {
        $scope.typeProp = "";
        $scope.brandProp = prop;
    }

    $scope.findProd =function() {
        $scope.nameProp = $scope.prodName;
    }
   
});
var cart = [];
var amout = 0;
app.controller("detailCtrl", function($scope, $routeParams) {
    $scope.user = user;
    $scope.id = $routeParams.id;
    $scope.cart = cart;
    $scope.amout = amout;
    for(let i=0;i<productList.length;i++) {
        console.log($scope.id +"&&"+productList[i].id);
        if($scope.id == productList[i].id) {
            $scope.name=productList[i].name;
            $scope.img =productList[i].img;
            $scope.price = productList[i].price;
            $scope.type = productList[i].type;
            $scope.brand = productList[i].brand;
            $scope.sold = productList[i].sold;
            break;
        }
    }
    $scope.addToCard = function() {
        if(typeof $scope.number!= "number") {
            alert("Vui lòng nhập số lượng");
            document.getElementById("num").focus();
            return;
        }
        for(let i=0;i<cart.length;i++) {
            if($scope.name == cart[i].name) {
                cart[i].number += $scope.number;
                cart[i].sum += parseFloat($scope.price) * parseFloat($scope.number);
                $scope.amout += parseFloat($scope.price) * parseFloat($scope.number);
                return;
            }
        } 
        var item = {    
            "name": $scope.name,
            "price": $scope.price,
            "number" : $scope.number,
            "sum" : parseFloat($scope.price) * parseFloat($scope.number)
        }
        $scope.cart.push(item);
        $scope.amout = 0;
        for(let i=0;i<cart.length;i++) {
           
                $scope.amout += cart[i].sum;
            
        } 
    }
    $scope.delete = function(index) {
        if(cart[index].number==1) {
            $scope.amout -= cart[index].price;
            cart.splice(index, 1);
            
        } else {
            cart[index].number -= 1;
            $scope.amout -= cart[index].price;
        }
    }


});

app.directive('formFmt', function() {
    return {
        require: 'ngModel',
        link: function(scope, element, attr, mCtrl) {
            function fnValidate(value) {
                if(value.length<6) {
                    mCtrl.$setValidity('charE',false);
                } else {
                    console.log('avc');
                    mCtrl.$setValidity('charE', true);
                }
                return value;
            }
            mCtrl.$parsers.push(fnValidate)
        }
    };
});
    

      