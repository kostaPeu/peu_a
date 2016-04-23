<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

 <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->
   
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery.js" type="text/javascript"></script>
    
<style type="text/css">
.add {
	width: 400px;
	height: 500px;
	border: 2px;
	border-color: gray;
	border-style: solid;
	position: absolute;
	background-color: white;
	display: none;
	z-index: 100;
	box-shadow: 1px 1px 50px rgba(0,0,0,.5);
}
.title {
	background-color: darkgray;
}
tr {
	border: 1px;
	border-color: black;
	border-style: solid;
}
th {
	border: 1px;
	border-right: black;
	border-style: solid;
}
.new {
 	position: relative;
}
</style>
<script type="text/javascript">
$(function(){
	$('#newBtn').click(function(){
		$('.add').css("display","block")
	})
	$('#closeBtn').click(function(){
		$('.add').css("display","none")
	})
})
</script>
</head>
<body>
	<div class="add">
	<div class="title">
		<span>품목등록</span>
	</div>
	<form action="">
		<table>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>aa</th>
				<td><input type="text"></td>
			</tr>
		</table>
		<input type="submit" class="btn btn-default" id="saveBtn" value="저장">
		<input type="button" class="btn btn-default" id="closeBtn" value="닫기">
	</form>
	</div>
	<table class="table table-bordered table-hover new">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>품목코드</th>
				<th>품목명</th>
				<th>그룹명</th>
				<th>바코드</th>
				<th>입고단가</th>
				<th>출고단가</th>
				<th>품목구분</th>
				<th>원산지</th>
			</tr>
		</thead>
		<tr>
			<td><input type="checkbox"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<input type="button" id="newBtn" class="btn btn-default" value="등록">
</body>
</html>