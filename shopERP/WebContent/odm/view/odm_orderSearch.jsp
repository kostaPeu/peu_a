<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/shopERP/stock/css/stock.css" rel="stylesheet">
<script src="/shopERP/stock/js/stock_search.js"></script>
</head>
<body>
<div class="search">
			<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<td>��������</td>
					<td><input type="text" class="datepicker1">  -  <input type="text" class="datepicker1"></td>
				</tr> 
				<tr>
					<td>ī�װ�</td>
					<td>
						<select class="form-inline">
							<option>��ǰ����</option>
							<option>a</option>
							<option>b</option>
						</select>
						<select class="form-inline">
							<option>�׷��</option>
							<option>a</option>
							<option>b</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Ű����</td>
					<td><input type="text" id="keyword" name=""></td>
				</tr>
			</table>
			<div class="localcenter">
				<a href="./main.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_orderList.jsp"" class="btn btn-default btn-sm localcenter"><span class="fa fa-search"></span></a>
				</div>
			</div>
	</div>
</body>
</html>