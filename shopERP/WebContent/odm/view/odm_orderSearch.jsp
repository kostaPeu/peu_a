<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/shopERP/stock/css/jquery-ui.min.css">
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/stock/css/stock.css" rel="stylesheet">
<script src="/shopERP/stock/js/jquery.min.js"></script>
<script src="/shopERP/stock/js/jquery-ui.min.js"></script>
<script src="/shopERP/js/ajax.js"></script>
<script src="/shopERP/odm/js/order_search.js"></script>
</head>
<body>
<div class="search">
			<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<td>기준일자</td>
					<td class="form-inline">
					<select class="form-control">
						<option id="" class="">주문수집일</option>
						<option id="" class="">주문일</option>
						<option id="" class="">발주확인일</option>
					</select>
					<input type="text" class="datepicker1">  -  <input type="text" class="datepicker1"></td>
				</tr> 
				<tr>
					<td>카테고리</td>
					<td class="form-inline">
					<select class="form-control">
						<option id="" class="">대분류</option>
						<option id="" class="">중분류</option>
					</select>
					<select class="form-control">
						<option id="" class="">중분류</option>
						<option id="" class="">소분류</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>키워드</td>
					<td><input type="text" id="search_name"></td>
				</tr>
			</table>
			<ul class="local localcenter">
				<li><a href="/shopERP/odm/view/odm_orderList.jsp" class="btn btn-default btn-sm"><span class="fa fa-search"></span></a></li>
			</ul>
			</div>
	</div>
</body>
</html>