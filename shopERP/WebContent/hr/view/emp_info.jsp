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
    <link rel="stylesheet" href="/shopERP/css/emp.css">
	<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	
	function fn_update_emp(){
		location.href="./main.jsp?left=./hr/view/hr_side.jsp?&contents=./hr/view/update_emp.jsp";
	}

	function fn_insert_emp(){
		location.href="./main.jsp?left=./hr/view/hr_side.jsp?&contents=./hr/view/insert_emp.jsp";
	}

</script>
<style type="text/css">
ul{
	list-style: none;
	padding: 0;
	margin: 0;
}
</style>
</head>
<body>
	<div class="hr_body">
		<div class="container-fluid">
			<div class="row">
				<h3 class="col-md-2 col-md-offset-1">직원조회</h3>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4 col-md-offset-8">
					<form class="form-inline" id="search_form">
						<div class="form-group">
							<label for="search_employee">이름</label> <input type="text"
								class="form-control input-sm" id="emp_name_input" name="emp_id">
						</div>
						<button type="submit" class="btn btn-sm">직원검색</button>
					</form>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="col-md-10 col-md-offset-1">
				<table class="table table-condensed table table-bordered">
					<thead>
						<tr class="emp_info_head">
							<th>사번</th>
							<th>이름</th>
							<th>나이</th>
							<th>입사일</th>
							<th>부서명</th>
							<th>연봉</th>
							<th>주소</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>직급명</th>
							<th>직무명</th>
							<th>직책명</th>
							<th>프로필사진</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tr class="emp_info_body">
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td>aa</td>
						<td><button type="button" class="btn btn-default btn-xs">사진</button></td>
						<td>
							<button type="button" class="btn btn-default btn-xs" id="insert_emp_btn" onclick="fn_update_emp()">수정</button>
						</td>
						<td><button type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="container-fluid">
			<div class="col-md-1 col-md-offset-1">
				<button type="button" class="btn btn-default" id="insert_emp_btn" onclick="fn_insert_emp()">신규등록</button>
			</div>
		</div>

		<script src="/shopERP/js/bootstrap.min.js"></script>
	</div>
</body>
</html>