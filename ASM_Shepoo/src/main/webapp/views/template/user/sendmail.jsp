<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send mail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style type="text/css">
*{
	--formWidth:460px;
	--btnWidth:70px;
	--btnCenter:195px;
}
.formMailer{
	width: var(--formWidth);
	margin: auto;
	margin-top: 1rem;
}
h2{
	color:#0000FF;
}
.btnSend{
	margin-top: 1.5rem;
	margin-left: 195px;
	width: var(--btnWidth);
	font-size:25px;
}
.btnMore{
	margin-top:1rem;
}
</style>
</head>
<body>
	<form enctype="multipart/form-data" class="formMailer" action="/forgotPass" method="post">
		<h2>Gửi email</h2>
		<div class="form-group">
			<label for="formControlInput">To</label> <input
				type="email" class="form-control" id="formControlInput" name="TxtTo"
				placeholder="Nhập email người nhận...">
		</div>
		 <br/>
		 <span style="color: green;margin-top: 10px;">${msg }</span>
		 <br/>
		  <span style="color: red;margin-top: 10px;">${error }</span>
		 <br/>
		<button class="btn btn-success btnSend">Gửi</button>
	</form>
	<script type="text/javascript">
		const btnMore=document.getElementById('btnMore');
		const fileMore = document.getElementById("fileMore");		
		btnMore.addEventListener('click',()=>{
			fileMore.style.display="block";
		});
	</script>
</body>
</html>