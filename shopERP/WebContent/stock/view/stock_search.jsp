<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shopERP/stock/css/jquery-ui.min.css">
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/stock/css/stock.css" rel="stylesheet">
<script src="/shopERP/stock/js/jquery.min.js"></script>
<script src="/shopERP/stock/js/jquery-ui.min.js"></script>
<script src="/shopERP/js/ajax.js"></script>
<script src="/shopERP/stock/js/stock_search.js"></script>
</head>
<body>
<div class="search">
		<form class="form" action="">
			<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<td>기준일자</td>
					<td><input type="text" class="datepicker1">  -  <input type="text" class="datepicker1"></td>
				</tr> 
				<tr>
					<td>창고</td>
					<td><input type="text" id="warehouse"><button id="warehouse_search" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button></td>
				</tr>
				<tr>
					<td>품목코드</td>
					<td><input type="text" id="product_id"><button id="product_search" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button></td>
				</tr>
			</table>
			<ul class="local localcenter">
				<li><a href="/shopERP/stock/view/stock_search_calendar.jsp" class="btn btn-default btn-sm"><span class="fa fa-search"></span></a></li>
			</ul>
			</div>
		</form>
	</div>
</body>
</html>