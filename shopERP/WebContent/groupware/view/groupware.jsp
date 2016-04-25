<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./js/ajax.js"></script>
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
<script src="./groupware/js/gw_ajax.js"></script>

</head>
<body>
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">그룹웨어</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="./groupware/view/notice/notice_list.jsp">공지사항</a></li>
				<li><a href="./groupware/view/depboard/dep_board_list.jsp">부서게시판</a></li>
				
				<li data-toggle="collapse" href="#nnaa"><a href="./groupware/view/sign/sign_alldraft_list.jsp">전자결재</a>
					<ul id="nnaa" class="collapse">
						<li><a href="./groupware/view/sign/sign_alldraft_list.jsp">기안서 작성</a></li>
						<li><a href="#">내 결재 관리</a></li>
						<li><a href="#">기안서 통합 관리</a></li>
						<li><a href="#">공통 양식 관리</a></li>
					</ul>
				</li>
				
				<li><a href="./groupware/view/imageboard/imageboard_list.jsp">이미지게시판</a></li>
				<li><a
					href="./groupware/view/projectboard/pb_allproject_list.jsp">프로젝트게시판</a></li>
			</ul>
		</div>
	</div>
</body>
</html>