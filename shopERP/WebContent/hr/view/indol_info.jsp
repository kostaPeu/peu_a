<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shopERP/css/emp.css">
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	
	function fn_update_indol(){
		location.href="./mainTest2.jsp?left=./hr/view/hr_side.jsp?&contents=./hr/view/update_indol.jsp";
	}

</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h3 class="col-md-2 col-md-offset-1">직원근태사항</h3>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-md-offset-8">			
				<form class="form-inline" id="search_form">
					<div class="form-group">
						<label for="search_employee">이름</label> 
						<input type="text" class="form-control input-sm" id="emp_name_input" name="emp_id">
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
					<tr class="indol_info_head">
						<th>사번</th>
						<th>이름</th>
						<th>지각</th>
						<th>조퇴</th>
						<th>휴가</th>
						<th>반차</th>
						<th>결근</th>
						<th>이메일</th>
						<th>연차</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tr class="indol_info_body">
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>
						<button type="button" class="btn btn-default btn-xs" id="insert_emp_btn" onclick="fn_update_indol()">수정</button>
					</td>
					<td><button type="button" class="btn btn-default btn-xs">삭제</button></td>
				</tr>
			</table>
		</div>
	</div>
	<script src="/shopERP/js/bootstrap.min.js"></script>
</body>
</html>