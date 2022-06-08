
app.controller("signInCtrl", function($scope) {
   $scope.login = function() {
       console.log("hello");
       $scope.flag = false;
       for(let i=0;i<userList.length;i++) {
            var userName = userList[i].userName;
            var password = userList[i].password;
            var fullname = userList[i].fullName;
            if(userName === $scope.userName && password === $scope.password) {
                document.getElementById("loginFm").style.display = "none";
                alert("Dang Nhap thanh cong");  
                user = fullname;
                window.location.replace("#!home");
                $scope.flag = true;
                break;
            }
            console.log($scope.flag);
            if($scope.flag===true) {
                alert($scope.flag);
                document.getElementById("loginFm").style.display = "none";
            } else {
                document.getElementById("loginFm").style.display = "block";
                
            }
       }
   }
    document.getElementById("frm").onsubmit = $scope.flag;
   
});


