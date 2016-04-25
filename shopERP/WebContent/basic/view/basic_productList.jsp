<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<link rel="stylesheet" href="/shopERP/css/style.css">
<link rel="stylesheet" href="/shopERP/css/responsive.css">
<script src="/shopERP/js/jquery.min.js"></script>
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/basic/css/basic_productList.css" rel="stylesheet">
<script src="/shopERP/basic/js/basic.js" type="text/javascript"></script>

</head>
<body>
	<div class="add xclose">
		<div class="title">
			<span class=""><strong>품목등록</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<form class="form-horizontal" action="insertProduct.basic" method="post">
			<div class="addform">
				<div class="form-group has-feedback">
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_id" name="product_id"> <span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="product_name" class="col-sm-2 control-label"><strong>품목명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_name" name="product_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="pgroup_name" class="col-sm-2 control-label">그룹명</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="pgroup_id" name="pgroup_id">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_customer" class="col-sm-2 control-label">원산지</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="made_in" name="made_in">
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="standard" class="col-sm-2 control-label">규격명</label>
					<div class="col-sm-10">
						<select class="form-control" id="standard_id" name="standard_id">
							<option>sd1</option>
							<option>sd2</option>
						</select>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_customer" class="col-sm-2 control-label">바코드</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="barcode" name="barcode">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_price" class="col-sm-2 control-label">입고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price_in" name="price_in"> <span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="out_price" class="col-sm-2 control-label">출고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price_out" name="price_out"> <span></span>
					</div>
				</div>
				<button type="submit" class="btnn btn btn-default" id="saveBtn">등록</button>
			</div>
		</form>
	</div>
	<div class="update xclose">
		<div class="title">
			<span class=""><strong>품목수정</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<form class="form-horizontal" action="">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_id"> <span></span>
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
						<input type="text" class="form-control" id="in_price"> <span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="out_price" class="col-sm-2 control-label">출고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="out_price"> <span></span>
					</div>
				</div>
				<button type="submit" class="btnn btn btn-default" id="saveBtn">수정</button>
			</div>
		</form>
</div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th><input type="checkbox"></th>
					<th>품목코드</th>
					<th>품목명</th>
					<th>그룹명</th>
					<th>바코드</th>
					<th>입고단가</th>
					<th>출고단가</th>
					<th>규격명</th>
					<th>원산지</th>
				</tr>
			</thead>
			<c:forEach var="product" items="${list }">
				<tr>
					<td><input type="checkbox"></td>
					<td>${product.product_id }</td>
					<td>${product.product_name }</td>
					<td>${product.pgroup_id }</td>
					<td>${product.barcode }</td>
					<td>${product.price_in }</td>
					<td>${product.price_out }</td>
					<td>${prodcut.standard_id }</td>
					<td>${product.made_in }</td>
				</tr>
			</c:forEach>
	</table>
		<div class="buttongroup">
			<input type="button" id="newBtn" class="btn btn-default" value="등록">
			<input type="button" id="updateBtn" class="btn btn-default" value="수정"> 
			<input type="button" id="deleteBtn" class="btn btn-default" value="삭제">
		</div>

	
</body>
</html>