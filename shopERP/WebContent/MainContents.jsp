<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Font Awesome -->

<script src="/shopERP/js/jquery.js"></script>
<script src="/shopERP/js/main.js" type="text/javascript"></script>
<script src="/shopERP/js/bootstrap.min.js"></script>
<script src="groupware/js/jquery-1.10.2.min.js"></script>
<script src="groupware/js/jquery-ui-1.10.3.custom.min.js"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="groupware/css/contents.css">
<!-- Custom CSS -->


</head>
<body>
<!-- Main Contents Start -->
		<div class="warapper-MainContents">
			<div class="container">
				<div class="row">
					<div class="col-md-4 pull-right">
						<jsp:include page="/groupware/view/depboard/dep_board_list.jsp"></jsp:include>
					</div>
					<div class="col-md-8 pull-left">
						<jsp:include page="selectable.html"></jsp:include>
					</div>				
				</div>			
			</div>	
		</div><!-- Main Contents END -->
</body>
</html>