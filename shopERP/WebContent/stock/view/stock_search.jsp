<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shopERP/stock/css/jquery-ui.min.css">
<script src="/shopERP/stock/js/jquery.min.js"></script>
<script src="/shopERP/stock/js/jquery-ui.min.js"></script>
<script>
$(function() {
  $( "#datepicker1" ).datepicker({
    dateFormat: 'yy-mm-dd'
  });
});


</script>
</head>
<body>
<div class="search">
		<div class="title">
			<span class=""><strong>재고현황</strong></span>
		</div>
		<form class="form-horizontal" action="">
			<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<td>기준일자</td>
					<td><input type="text" id="datepicker1"></td>
				</tr>
				<tr>
				</tr>
			</table>
				<!-- <div class="form-group has-feedback">
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_id">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="product_name" class="col-sm-2 control-label"><strong>품목명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="pgroup_name" class="col-sm-2 control-label">그룹명</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="pgroup_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_customer" class="col-sm-2 control-label">구매처</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="in_customer">
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="standard" class="col-sm-2 control-label">규격명</label>
					<div class="col-sm-10">
						<select class="form-control" id="standard">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="pgroup" class="col-sm-2 control-label">품목구분</label>
					<div class="col-sm-10">
						<select class="form-control" id="standard">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_price" class="col-sm-2 control-label">입고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="in_price">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="out_price" class="col-sm-2 control-label">출고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="out_price">
						<span></span>
					</div>
				</div>
				<button type="submit" class="btnn btn btn-default"  id="saveBtn">등록</button>
				<button class="btnn btn btn-default closeBtn">닫기</button>
			</div> -->
		</form>
	</div>

</body>
</html>