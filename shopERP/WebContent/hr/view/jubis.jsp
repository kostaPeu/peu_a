<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shopERP/css/emp.css">
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h3 class="col-md-2">주비스관리</h3>
		</div>
	</div>
	<div class="container-fluid">
		<div class="col-md-12" id="jubis_table">
			<table class="table table-condensed table table-bordered">
				<thead>
					<tr class="jubis_th">
						<th width="50">번호</th>
						<th width="200">응답키워드</th>
						<th width="650">SQL</th>
						<th width="50">삭제</th>
					</tr>
				</thead>
				<tr class="jubis_td">
					<td>aa</td>
					<td>aa</td>
					<td>aa</td>
					<td><button type="button" class="btn btn-default btn-xs">삭제</button></td>
				</tr>
			</table>
		</div>
	</div>

	<form class="form-horizontal" id="j_insert">
		<div class="form-group">
			<div class="container-fluid">
				<div class="row">
					<h5 class="col-md-2">등록</h5>
				</div>
			</div>
			<div class="container-fluid" id="jubis_update_form">
				<label id="update_id_label" for="jubis_id_label"
					class="col-sm-1 control-label">번호</label>
				<div class="col-sm-1">
					<input type="text" class="form-control" name="jubis_id">
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-default">중복확인</button>
				</div>
				<label id="update_keyword_label" for="jubis_keyword_label"
					class="col-sm-1 control-label">키워드</label>
				<div class="col-sm-1">
					<input type="text" class="form-control" name="keyword">
				</div>
				<label id="update_sql_label" for="jubis_keyword_label"
					class="col-sm-1 control-label">SQL</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="jubis_sql">
				</div>
				<div class="col-sm-1">
					<button type="submit" class="btn btn-default">등록</button>
				</div>
			</div>
		</div>
	</form>


	<form class="form-horizontal" id="j_update">
		<div class="form-group">
			<div class="container-fluid">
				<div class="row">
					<h5 class="col-md-2">수정</h5>
				</div>
			</div>
			<div class="container-fluid" id="jubis_insert_form">
				<label id="insert_id_label" for="jubis_id_label"
					class="col-sm-1 control-label">번호</label>
				<div class="col-sm-1">
					<input type="text" class="form-control" name="jubis_id">
				</div>

				<label id="insert_keyword_label" for="jubis_keyword_label"
					class="col-sm-2 control-label">키워드</label>
				<div class="col-sm-1">
					<input type="text" class="form-control" name="keyword">
				</div>
				<label id="insert_sql_label" for="jubis_keyword_label"
					class="col-sm-1 control-label">SQL</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="jubis_sql">
				</div>
				<div class="col-sm-1">
					<button type="submit" class="btn btn-default">등록</button>
				</div>
			</div>
		</div>
	</form>
	<script src="/shopERP/js/bootstrap.min.js"></script>
</body>
</html>