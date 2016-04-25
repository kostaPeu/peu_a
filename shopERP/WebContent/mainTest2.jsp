<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
   String left = request.getParameter("left");
   if (left == null) {
      left = "";
   }
   String contents = request.getParameter("contents");
   if (contents == null) {
      contents = "";
   }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Font Awesome -->

<script src="/shopERP/js/jquery.js"></script>
<script src="/shopERP/js/main.js" type="text/javascript"></script>
<script src="/shopERP/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">

<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="groupware/js/jquery-1.10.2.min.js"></script>
<script src="groupware/js/jquery-ui-1.10.3.custom.min.js"></script>
</head>
<body id="body_html" class="font-dotum">
	<!-- top -->
	<div id="Top-Menu" class="wrapper-erp-global-nav">
		<!-- logo start -->
		<div class="erp-global-nav-qm">
			<div class="qm-company-logo">
				<img width="110" height="35" alt="logo" src="images/logo2.png">
			</div>
		</div>
		<!--logo end-->

		<!-- topMenuBar start-->
		<div class="erp-global-nav">
			<ul>
				<li class=""><a id="TopMainMenu1"
					href="./mainTest2.jsp?left=./basic/view/basic.jsp">기초관리</a>
				<li class=""><a id="TopMainMenu2"
					href="./mainTest2.jsp?left=./purchase/view/purchase.jsp">구매관리</a></li>
				<li class=""><a id="TopMainMenu3"
					href="./mainTest2.jsp?left=./sale/view/sale.jsp">판매관리</a></li>
				<li class=""><a id="TopMainMenu4"
					href="./mainTest2.jsp?left=./odm/view/odm.jsp">주문/배송관리</a></li>
				<li class=""><a id="TopMainMenu5"
					href="./mainTest2.jsp?left=./stock/view/stock.jsp">재고관리</a></li>
				<li class=""><a id="TopMainMenu6"
					href="./mainTest2.jsp?left=./accounting/view/Accounleft.jsp">회계관리</a></li>

				<li class=""><a id="TopMainMenu7"
					href="./mainTest2.jsp?left=./hr/view/hr_side.jsp">인사관리</a></li>

				<li class=""><a id="TopMainMenu8"
					href="./mainTest2.jsp?left=./groupware/view/groupware.jsp">그룹웨어</a></li>
				<li class=""><a id="TopMainMenu9" href="#">마이페이지</a></li>
			</ul>
		</div>
		<!-- topbar end -->
	</div>
	<!-- top end -->

	<div id="Left_Menu" class="wrapper-frame-erp-local-nav show">
		<div class="wrapper-erp-local-nav">
			<jsp:include page="<%=left%>"></jsp:include>
		</div>
	</div>

	<div class="container" id="contents">
		<jsp:include page="<%=contents%>"></jsp:include>
	</div>
</body>
</html>