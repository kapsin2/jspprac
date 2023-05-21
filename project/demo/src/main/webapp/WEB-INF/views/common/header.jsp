<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/index"><img src="../../img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<c:if test="${sessionScope.user_nick == null}">
					<div class="navbar-btn navbar-btn-right">
						<a type="button" class="btn btn-success update-pro" title="Upgrade to Pro" target="_blank" onclick="location.href='login'"> <span>Login</span></a>
						<a type="button" class="btn btn-success update-pro" title="Upgrade to Pro" target="_blank" onclick="location.href='signup'"> <span>Signup</span></a>
					</div>
				</c:if>
				<c:if test="${sessionScope.user_nick != null}">
					<div class="navbar-btn navbar-btn-right">
						<a type="button" class="btn btn-success update-pro" title="Upgrade to Pro" target="_blank" onclick = "logout()"> <span>Logout</span></a>
					</div>
				</c:if>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
		
						<c:if test="${sessionScope.user_nick == null}">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../../img/user.png" class="img-circle" alt="Avatar"> <span>로그인이필요합니다</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							</li>
						</c:if>
						<c:if test="${sessionScope.user_nick != null}">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../../img/user.png" class="img-circle" alt="Avatar"> <span>${sessionScope.user_nick}님 환영합니다!</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							</li>
						</c:if>
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<c:if test="${sessionScope.user_nick != null}">
				<nav>
					<ul class="nav">
						<li><a href="/index" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li><a href="/boards" class=""><i class="lnr lnr-dice"></i> <span>Board</span></a></li>
						<li><a href="/jqgrid" class=""><i class="lnr lnr-text-format"></i> <span>JqGrid</span></a></li>
						<li><a href="/api" class=""><i class="lnr lnr-linearicons"></i> <span>API</span></a></li>
			
					</ul>
				</nav>
			</c:if>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		
		<!-- END MAIN -->
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="../../../vendor/jquery/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="../../../vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../../vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../../../vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="../../../vendor/chartist/js/chartist.min.js"></script>
	<script src="../../../js/klorofil-common.js"></script>
	<script src="../../js/login.js"></script>
	<script src="../../js/logout.js"></script>
	<script src="../../js/board.js"></script>
	
</body>

</html>
