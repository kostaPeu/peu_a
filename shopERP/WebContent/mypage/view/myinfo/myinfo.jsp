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
<link rel="stylesheet" href="./mypage/css/myinfo.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="./js/bootstrap-datepicker.js"></script>

</head>
<body>

	<div class="container">
		<h2>개인정보</h2>
		
		<div id="indolence" class="group">
		<h4>근태현황</h4>
			<table class="table table-hover">
			<thead>
				<tr class="row">
					<th class="col-sm-2">지각</th>
					<th class="col-sm-2">반차</th>
					<th class="col-sm-2">휴가</th>
					<th class="col-sm-2">연차</th>
					<th class="col-sm-2">결근</th>
					<th class="col-sm-2">기간</th>
				</tr>
			</thead>
			<tbody>
				<tr class="row">
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
				</tr>
				<tr class="row">
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
					<td class="col-sm-2">6</td>
				</tr>
			</tbody>
		</table>

		</div>
				
				
				
		<div id="myinfo" class="group">
		<h4>개인정보</h4>
			<form role="form">
			<div class="col-sm-12">
				<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">사원번호</label>
			    	<div class="col-sm-6">
			      		<p>12345</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">입사일</label>
			    	<div class="col-sm-6">
			      		<p>2016-01-05</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">이름</label>
			    	<div class="col-sm-6">
			      		<p>김보람</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">부서</label>
			    	<div class="col-sm-6">
			      		<p>개발</p>
			      	</div>
		    	</div>
		   	</div>
		   	<div class="col-sm-12">
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">직무</label>
			    	<div class="col-sm-6">
			      		<p>개발</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">직급</label>
			    	<div class="col-sm-6">
			      		<p>12345</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">직책</label>
			    	<div class="col-sm-6">
			      		<p>12345</p>
			      	</div>
		    	</div>
		    	<div class="col-sm-3 form-group">
			    	<label class="col-sm-6 control-label">연봉</label>
			    	<div class="col-sm-6">
			      		<p>12345</p>
			      	</div>
		    	</div>
		    </div>
		    
		    	<div class="col-sm-12 form-group">
			    	<label class="col-sm-2 control-label">나이</label>
			    	<div class="col-sm-2">
			      	<input class="form-control" type="text" value="24">
		    		</div>
		    	</div>
		    	<div class="col-sm-12 form-group">
			    	<label class="col-sm-2 control-label">전화번호</label>
			    	<div class="col-sm-2">
			      	<input class="form-control" type="text" value="010-2030-0527">
			      	</div>
		    	</div>
		    	<div class="col-sm-12 form-group">
			    	<label class="col-sm-2 control-label">이메일</label>
			    	<div class="col-sm-6">
			      	<input class="form-control" type="text" value="aa@aa.com">
			      	</div>
		    	</div>
		    	<div class="col-sm-12 form-group">
			    	<label class="col-sm-2 control-label">주소</label>
			    	<div class="col-sm-6">
			      	<input class="form-control" type="text" value="서울시 은평구 응암동">
			      	</div>
		    	</div>
		    	<div class="col-sm-12 form-group">
			    	<label class="col-sm-2 control-label">비밀번호</label>
			    	<div class="col-sm-6">
			      	<input class="form-control" type="password" value="1234">
			      	</div>
		    	</div>
		    	<button type="button" class="btn btn-default">수정</button>
		    	
		    </form>
		</div>
		
		
		<div id="holiday" class="group">
		<h4>휴가신청</h4>
		<form class="col-sm-12 form-inline">
			<select class="col-sm-2 form-control">
				<option selected>선택하세요</option>
				<option>연차</option>
				<option>휴가</option>
			</select>
			
			<div class="col-sm-6 input-group date" data-provide="datepicker">
			    <input type="text" class="form-control">
			    <div class="input-group-addon">
			        <span class="glyphicon glyphicon-th"></span>
			    </div>
			</div>
			<button type="button" class="col-sm-4 btn btn-default">신청</button>
		</form>
		</div>
	</div>

</body>
</html>