<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="./groupware/js/gw_js.js"></script>

</head>

<body>
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">마이페이지</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="./main.jsp?left=./mypage/view/mypage.jsp&contents=./mypage/view/myinfo/myinfo.jsp">개인정보 및 휴무신청</a></li>
				<li><a href="./main.jsp?left=./mypage/view/mypage.jsp&contents=./mypage/view/myfile/myfile_list.jsp">개인파일함</a></li>
				<li><a href="./main.jsp?left=./mypage/view/mypage.jsp&contents=./mypage/view/mydraft/mydraft_list.jsp">내 결재 관리</a></li>
				<li><a href="./main.jsp?left=./mypage/view/mypage.jsp&contents=./mypage/view/mytext/mytext.jsp">내가 작성한 글</a></li>
				
			</ul>
		</div>
	</div>
</body>
</html>