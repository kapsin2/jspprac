<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
	<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="../../vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../vendor/linearicons/style.css">
	<link rel="stylesheet" href="../../vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="../../css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="../../css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="../../img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="../../img/favicon.png">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


</head>

<body>
	<div id="wrapper" style="margin-top:100px; margin-left: 100px;" >
		<div class="vertical-align-wrap">
			<div class="auth-box" style =" height: auto;">
					<div class="content">
						<div>
							<p class="lead">Sign UP</p>
						</div>
						<section class="form-auth-small">
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">NAME</label>
								<input type="email" class="form-control" id="signup-name"  placeholder="NAME">
							</div>
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">Nick</label> 
								<input type="email" class="form-control" id="signup-nick"  placeholder="Nick" onfocusout = "ck_usernick()"><p id ="green" style='color: green; display: none;'>사용가능한 아이디 입니다.</p> <p id="red" style='color: red;display: none;'>중복된 아이디 입니다.</p>
							</div>
							<div class="form-group">
								<label for="signin-password" class="control-label sr-only">Pwd</label>
								<input type="password" class="form-control" id="signup-pswd"  placeholder="Pwd">
							</div>
							<div class="form-group">
								<label for="signin-password" class="control-label sr-only">RepeatPwd</label>
								<input type="password" class="form-control" id="signup-Repeatpswd"  placeholder="RepeatPwd">
							</div>
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">Email</label>
								<input type="email" class="form-control" id="signup-email"  placeholder="Email">
							</div>
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">Birth</label>
								<input type="text" oninput="autoHyphen1(this)" maxlength="10" class="form-control" id="signup-birth"  placeholder="Birth">
							</div>
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">Phone</label>
								<input type="text" oninput="autoHyphen2(this)" maxlength="13" class="form-control" id="signup-phone"  placeholder="Phone">
							</div>
							<div class="form-group">
								<label for="signin-email" class="control-label sr-only">Addr</label>
								<input type="email"  class="form-control" id="signup-addr"  placeholder="Addr">
							</div>
							<button type="submit" class="btn btn-primary btn-lg btn-block" onclick="signup()">join</butto>
						</section>
					</div>
			</div>
		</div>
	</div>
	<script src="../../js/signup.js"></script>
	<script>
		const autoHyphen1 = (target) => {
		target.value = target.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,4})(\d{0,2})(\d{0,2})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
		}

		const autoHyphen2 = (target) => {
		target.value = target.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
		}
	</script>
</body>

</html>
