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
		/* location.href="./mainTest2.jsp?left=./hr/view/hr_side.jsp?&contents=./hr/view/update_indol.jsp"; */
	}

</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h3 class="col-md-2 col-md-offset-1">연차/휴가요청</h3>
		</div>
	</div>

	<div class="container-fluid">
		<div class="col-md-10 col-md-offset-1">
			<table class="table table-condensed table table-bordered">
				<thead>
					<tr class="indol_request_th">
						<th>요청번호</th>
						<th>사번</th>
						<th>이름</th>
						<th>연차신청일</th>
						<th>신청일</th>
						<th>휴가/연차</th>
						<th>승인</th>
						<th>거부</th>
						<th>승인여부</th>
					</tr>
				</thead>
				<tr class="indol_request_td">
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td>
						<button type="button" class="btn btn-default btn-xs">승인</button>
					</td>
					<td>
						<button type="button" class="btn btn-default btn-xs">거부</button>
					</td>
					<td>aa</td>
				</tr>
			</table>
		</div>
	</div>
	<script src="/shopERP/js/bootstrap.min.js"></script>
</body>
</html>