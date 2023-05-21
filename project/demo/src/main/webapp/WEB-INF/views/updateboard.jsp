<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
	<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	<script src="../../js/board.js"></script>
	<script>
		window.onload = function() {
			oneboard_update();
		}
	</script>
</head>

<body>
	<div id="wrapper" style="margin-top:100px; margin-left: 100px;" >
		<div>
			<div class="auth-box" style =" height: auto;">
					<div class="content">
						<div>
							<h1>Board Update</h1>
						</div>
						<section class="form-auth-small" id="updateboard">
							
						</section>
						<div style="text-align: center;">
							<button type="button"  onclick="updateboard()">수정</button>
							<button type="button"  onclick="location.href='boards'">목록</button>						
						</div>
					</div>
			</div>
		</div>
	</div>
	<script src="../../js/board.js"></script>
</body>

</html>
