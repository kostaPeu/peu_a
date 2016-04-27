<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String left = request.getParameter("left");
	String contents = request.getParameter("contents");
	if(left == null){
		left = "";
	}
	if(contents == null){
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
<script src="/shopERP/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!-- <script src="/shopERP/js/ajax.js"></script> -->

<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<script src="groupware/js/jquery-1.10.2.min.js"></script>
<script src="groupware/js/jquery-ui-1.10.3.custom.min.js"></script>

</head>
<body id="body_html" class="font-dotum">

	<!-- 상단 -->
	<jsp:include page="Test.jsp"></jsp:include>

	<!-- 왼쪽 -->
	<div id="Left_Menu" class="wrapper-frame-erp-local-nav show">
		<div class="wrapper-erp-local-nav">
			<jsp:include page="<%=left%>"></jsp:include>
		</div>
	</div>
	
	<!-- 컨텐츠 -->
	<div class="container" id="contents">
		<jsp:include page="<%=contents%>"></jsp:include>
	</div>

	<jsp:include page="MainContents.jsp"></jsp:include>

</body>
</html>
