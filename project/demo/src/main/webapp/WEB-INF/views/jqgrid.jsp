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

	<link rel="stylesheet" type="text/css" href="../../js/common/jquery-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="../../js/common/jquery-ui.css" />
	<link rel="stylesheet" type="text/css" href="../../js/common/jquery-ui.structure.css">
	<link rel="stylesheet" type="text/css" href="../../js/common/jquery-ui.theme.css">
	<link rel="stylesheet" type="text/css" href="../../js/jqGrid/css/ui.jqgrid.css" />
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="../../js/jqGrid/js/grid.locale-kr.js" type="text/javascript"></script>
	<script src="../../js/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	<script>
		window.onload = function() {
			jqgrid();
		}
	</script>
</head>

<body>
	<script src="../../js/jqgrid.js"></script>
	<div id="wrapper" style="margin-top:100px; margin-left: 300px;" >
		<table id="jqGrid"></table>
		<div id="gridpager"></div>
	</div>
</body>

</html>
