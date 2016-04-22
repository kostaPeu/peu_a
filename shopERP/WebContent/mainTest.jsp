<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String left = request.getParameter("left");
	if(left == null){
		left = "./sale/view/sale.jsp";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/contents.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- <script src="./groupware/js/test.js"></script> -->

</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid">
				<div class="col-md-12 pull-left" id="bland">
					<a>Power ERP</a>
				</div>
			</div>
		</div>
	</div>

	<div class="mainmenu-area">
		<div class="navbar-collapse collapse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="./mainTest.jsp?left=./basic/view/basic.jsp">기초관리</a></li>
					<li><a href="./mainTest.jsp?left=./purchase/view/purchase.jsp">구매관리</a></li>
					<li><a href="./sale/view/sale">판매관리</a></li>
					<li><a href="./odm/view/odm">주문/배송관리</a></li>
					<li><a href="./stock/view/stock">재고현황</a></li>
					<li><a href="#">회계</a></li>
					<li><a href="#">인사관리</a></li>
					<li><a href="./groupware/GroupWare">그룹웨어</a></li>
					<li><a href="#">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper-erp-local-nav">
		<jsp:include page="<%=left %>"></jsp:include>
	</div>
	
	<div class="container" id="contents">
		
	</div>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
