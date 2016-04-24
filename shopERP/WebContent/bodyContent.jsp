<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body id="body_html" class="font-dotum">
	<div class="wrapper-page-progress hidden">
		<div class="page-progress-icon">
		</div>
	</div>
	<div class="wrapper-overlay" style="opacity: 0.5; display: none;">
	</div>

<!-- 메인컨텐츠 필드 start -->
<div id="mainPage" class="page page-fluid">
	<!-- 상단 메뉴 제목부분  -->
	<div class="header header-fixed" style="width: 760px">
		<div class="wtarpper-title">
			<div class="pull-left">
				<span class="page-name">판매조회</span>
			</div>
		</div><!-- /상단 메뉴 제목부분  -->
		
		<!-- 메인 컨텐츠 본 내용 start -->
		<div class="contents" style="margin-top: 34.2px; margin-bottom: 40px" >
			<div title="titleContents"></div>
				<ul class="nav nav-tabs" style="width: 755px">
					<li id="tabConfirm" class="">
						<a class="cursor-pointer" href="#">조회</a>
					</li>
				</ul>
		<!-- 컨텐츠별 데이터 불러오기 -->	
			<div class="tab-content" style="">
				<div class="tab-pane" style="display: block;">
					<div id="dataGrid" data-layouttype="grid">
						<table id="grid-main" class="table table-bordered table-hover" style="width: 748px;">
						
						</table>					
					</div>
				</div>			
			</div>
		</div>
	</div>
</div><!-- 메인컨텐츠 필드 End -->

</body>
</html>