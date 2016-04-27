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
<link href="css/login.css" rel="stylesheet">
<script type="text/javascript">
	
</script>
</head>
<body>
<!-- 로그인부분 -->
<div class="container">
        <div class="card card-container">
                       <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form  class="form-signin" method="post" action="loginAction.gw">
                <span id="reauth-num" class="reauth-num"></span>
                <input type="text" name = "idid" id="inputId" class="form-control" placeholder="사번" required autofocus>
                <input type="password" name = "pwpw" id="inputPwd" class="form-control" placeholder="비밀번호" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> 기억하기
                    </label>
                    <label>
                        <input type="checkbox" value="arrival"> 출근
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">로그인</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                	비밀번호를 잊어버렸나요?
            </a>
        </div><!-- /card-container -->
    </div><!-- 로그인부분 -->

</body>
</html>