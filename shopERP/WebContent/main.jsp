<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->

<link rel="stylesheet" href="css/c.css">
<link rel="stylesheet" href="css/d.css">


</head>
<body id="body_html" class="font-dotum">
	<!-- top -->
	<div id="Top-Menu" class="wrapper-erp-global-nav">
		<!-- logo start -->
		<div class="erp-global-nav-qm">
			<div class="qm-company-logo">
				<img width="110" height="35" alt="logo" src="images/logo2.png">
			</div>
		</div> <!--logo end-->
		<!-- topMenuBar start-->
		<div class="erp-global-nav">
			<ul>
				<li class=""><a href="#">기초관리</a>
				<ul><!-- 드롭메뉴1 start -->
					<li><a href="#">품목등록</a></li>
					<li><a href="#">거래처등록</a></li>
				</ul><!-- 드롭메뉴1 end -->	
				</li>			
				
				<li class=""><a id="TopMainMenu2" href="./mainTest.jsp?left=./purchase/view/purchase.jsp">구매관리</a>
				<ul>
					<li><a href="#">구매 조회</a></li>
					<li><a href="#">거래 현황</a></li>
					<li><a href="#">구매처별 정산</a></li>
				</ul>
				</li>
				
				<li class=""><a id="TopMainMenu3" href="./mainTest.jsp?left=./sale/view/sale.jsp">판매관리</a>
					<ul>
						<li><a href="#">판매 조회</a></li>
						<li><a href="#">판매 현황</a></li>
						<li><a href="#">판매처별 정산</a></li>
						<li><a href="#">사입관리</a></li>
					</ul>
				</li>
				
				<li class=""><a id="TopMainMenu4" href="./mainTest.jsp?left=./odm/view/odm.jsp">주문/배송관리</a>
				<ul>
					<li><a href="#">주문관리</a></li>
					<li><a href="#">배송관리</a></li>
					<li><a href="#">취소/환불관리</a></li>
					<li><a href="#">C/S관리</a></li>
				</ul>			
				</li>
				
				<li class=""><a id="TopMainMenu5" href="./mainTest.jsp?left=./stock/view/stock.jsp">재고관리</a>
				<ul>
					<li><a href="#">재고 현황</a></li>
					<li><a href="#">재고 수불부</a></li>				
				</ul>
				</li>
				
				<li class=""><a id="TopMainMenu6" href="#">회계관리</a>
				<ul>
						<li><a href="#">기초등록</a></li>
						<li><a href="#">재무재표</a></li>
						<li><a href="#">어음관리</a></li>
						<li><a href="#">현금거래관리</a></li>
						<li><a href="#">채무관리</a></li>
				</ul>
				</li>
					
				<li class=""><a id="TopMainMenu7" href="#">인사관리</a>
				<ul>
						<li><a href="#">직원조회</a></li>
						<li><a href="#">인사기초등록</a></li>
						<li><a href="#">근태조회</a></li>
				</ul>
				</li>
				
				<li class=""><a id="TopMainMenu8" href="./groupware/GroupWare">그룹웨어</a>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">부서게시판</a></li>
						<li><a href="#">전자결재</a></li>
						<li><a href="#">이미지게시판</a></li>
						<li><a href="#">프로젝트</a></li>
					</ul>					
				</li>
				
				<li class=""><a id="TopMainMenu9" href="#">마이페이지</a>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">부서게시판</a></li>
						<li><a href="#">전자결재</a></li>
						<li><a href="#">이미지게시판</a></li>
						<li><a href="#">프로젝트</a></li>
					</ul>					
				</li>
			</ul>			
		</div><!-- topbar end -->
	</div> <!-- top end -->
	
<!-- left-MenuBar start -->
<div id="Left_Menu" class="wrapper-frame-erp-local-nav show">
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">기초관리
		</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="#">품목등록</a></li>
				<li><a href="#">거래처등록</a></li>
			</ul>
		</div>		
	</div>	
</div><!-- left-MenuBar END -->




<!-- leftMenuBar End -->
<!--  <body id="body_html" class="font-dotum">

	<div class="wapper">
		<div class="wapper-fixed">
			<div class="wapper-topbar">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12 pull-left" id="bland">
							<img alt="로고" src="images/logo2.png">
						</div>
					</div>
				</div>
			</div>
			<div class="mainmenu-area">
				<div class="navbar-collapse collapse">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<ul class="nav navbar-nav">
									<li><a href="#">기초관리</a></li>
									<li><a href="#">구매관리</a></li>
									<li><a href="#">판매관리</a></li>
									<li><a href="#">주문/배송관리</a></li>
									<li><a href="#">재고현황</a></li>
									<li><a href="./accounting/AccounTing">회계</a></li>
									<li><a href="#">인사관리</a></li>
									<li><a href="#">그룹웨어</a></li>
									<li><a href="#">마이페이지</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>-->



	
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
