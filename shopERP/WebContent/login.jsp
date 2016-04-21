<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- <meta charset="utf-8"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<script type="text/javascript">
	
</script>
</head>
<body>

	<div class="container">
		<form class="form-signin">
			<h2 class="form-signin-heading">Power ERP 시스템</h2>
			<label class="sr-only" for="inputID">사용자 ID</label> <input
				id="inputEmail" class="form-control" type="ID"  placeholder="사용자 ID">
				<label class="sr-only" for="inputPassword">Password</label> <input
				id="inputPassword" class="form-control" type="password" placeholder="패스워드">
				<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					기억하기
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
	</div>

</body>
</html>