<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.success, .fail{
	width: 40%;
	height: 120px;
	border: 2px;
	left: 28%;
	top: 15%;
	border-color: gray;
	border-style: solid;
	position: absolute;
	background-color: white;
	display: none;
	z-index: 100;
	box-shadow: 1px 1px 100px darkgray;
}
.title {
	background-color: darkgray;
	padding: 1%;
	text-align: center;
	font-size: 1.1em;
}
.new {
 	position: relative;
}
.contentsMsg{
	width: 90%;
	margin-left: 3%;
	margin-top: 3%;
	text-align: center;
}
.btnn{
	height:30px;
	width: 90px;
}
.buttongroup{
	text-align: center;
}
table tr td, table tr th{
	text-align: center;
}
</style>
<script type="text/javascript">
$(function(){
	$('#collectBtn').on('click', function(){
		$('.success').css("display","block");
		//$('.fail').css("display","block");
	})
	$('.closeBtn').click(function(){
		$('.xclose').css("display","none");
	})
	
})
$(function(){
	$('input').keyup(function(){
		if($(this).val() != null){
			$(this).next().addClass("glyphicon");
			$(this).next().addClass("glyphicon-ok");
			$(this).next().addClass("form-control-feedback");
		}if($(this).val() == ""){
			$(this).next().removeClass("glyphicon");
			$(this).next().removeClass("glyphicon-ok");
			$(this).next().removeClass("form-control-feedback");
		}
	})
})
</script>
</head>
<body>
<div class="success xclose">
		<div class="title">
			<span class=""><strong>주문수집</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="contentsMsg">수집이 완료되었습니다.</div>
	</div>
	<div class="fail xclose">
		<div class="title">
			<span class=""><strong>주문수집</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="contentsMsg">에러!</div>
	</div>
	<table class="table table-bordered table-hover">
		<tr>
			<th><input type="checkbox"></th>
			<th>쇼핑몰</th>
			<th>쇼핑몰 로그인ID</th>
			<th>최종주문수집시도일</th>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<div class="buttongroup">
		<input type="button" id="collectBtn" class="btn btn-default" value="수집">
	</div>
</body>
</html>