<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
	<title>Login | Klorofil - Free Bootstrap Dashboard Template</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="../../css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="../../css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="../../img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="../../img/favicon.png">
	<!-- <script>
		function login() {
			let Email = $('signin-email').val();
			let Password = $('signin-password').val();

			if(Email == "") {
				alert("이메일을 입력해주세요");
				return;
			} else if (Password == "") {
				alert("비밀번호를 입력해주세요");
				return;
			}

			$.ajax({
				type : "POST",
				url : "http://localhost:8080/login",
				contentType : "application/json",
				data: JSON.stringify({Email: Email, Password : Password})
			})
			.done(function(response) {
				if(response === 'index') {
					alert("로그인성공!");
				} else {
					alert("아이디와 비밀번호를 확인해주세요");
					window.location.reload();
				}
			})
		}
	</script> -->
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="../../img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">Login to your account</p>
							</div>
							<section class="form-auth-small">
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">Nick</label>
									<input type="email" class="form-control" name="nick" id="nick" placeholder="Nick">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Password</label>
									<input type="password" class="form-control" name="pswd" id="pswd"  placeholder="Password">
								</div>
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left">
										<input type="checkbox">
										<span>Remember me</span>
									</label>
								</div>
								<button type="button" class="btn btn-primary btn-lg btn-block" onclick="login()">LOGIN</button>
								<button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='signup'">Sign UP</button>
								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a href="#">Forgot password?</a></span>
								</div>
							</section>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">Free Bootstrap dashboard template</h1>
							<p>by The Develovers</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
	<script src="../../js/login.js"></script>
</body>

</html>
