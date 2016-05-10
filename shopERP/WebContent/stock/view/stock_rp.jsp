<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/shopERP/stock/css/stock.css" rel="stylesheet">
<script src="/shopERP/js/ajax.js"></script>
<script src="/shopERP/stock/js/stock_search.js"></script>
</head>
<body>
	<div class="item_div">
		<div class="title">
			<span class=""><strong>품목코드검색</strong></span>
			<button type="button" class="close i_closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal" action="">
			<div class="form1">
				<div class="form-group has-feedback">				
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_id"><br>
						<button class="btn btn-default btn-sm" type="submit"><span class="fa fa-search"></span></button>
						<span></span>					
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="warehouse_div">
		<div class="title">
			<span class=""><strong>창고검색</strong></span>
			<button type="button" class="close w_closeBtn"><span>&times;</span></button>
		</div>
		<div class="form1">
				<div class="form-group has-feedback">				
					<label for="warehouse_id" class="col-sm-2 control-label"><strong>창고검색</strong></label>
					<div class="col-sm-10">
						<table class="table table-bordered table-hover">
							<tr class="tablecenter">
								<th><input type="checkbox" id="" name=""></th>
								<th>구분</th>
								<th>창고코드</th>
								<th>창고명</th>
							</tr>
							<tr>
								<td><input type="checkbox" id="" name=""></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<button class="btn btn-default btn-sm" type="submit"><span class="fa fa-search"></span></button>
						<span></span>					
					</div>
				</div>
		</div>
	</div>
<div class="search">
			<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<td>기준일자</td>
					<td><input type="text" class="datepicker1">  -  <input type="text" class="datepicker1"></td>
				</tr> 
				<tr>
					<td>창고</td>
					<td><input type="text" id="warehouse_id" disabled="disabled">&nbsp;&nbsp;<button id="warehouse_search" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button></td>
				</tr>
				<tr>
					<td>품목코드</td>
					<td><input type="text" id="product_id" disabled="disabled">&nbsp;&nbsp;<button id="product_search" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button></td>
				</tr>
			</table>
			<ul class="local localcenter">
				<li><a href="/shopERP/stock/view/stock_rp_list.jsp" class="btn btn-default btn-sm"><span class="fa fa-search"></span></a></li>
			</ul>
			</div>
	</div>
</body>
</html>