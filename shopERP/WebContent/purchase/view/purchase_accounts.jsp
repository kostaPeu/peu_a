<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="purchase/css/purchase.css" rel="stylesheet">
    <script src="./js/bootstrap-datepicker.js"></script>
    <script src="/shopERP/purchase/js/purchase2.js" type="text/javascript"></script>
    <script src="/shopERP/purchase/js/purchase.js" type="text/javascript"></script>  
</head>
<body>

	<h2 class="page_title">구매처별 정산</h2>

	<!-- 거래처 검색 -->
	<div id="customerSearch_modal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	      
	    <div class="modal-content">
		<div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">거래처 검색</h4>
	      </div>
	      <div class="modal-body">
				<div class="col-sm-10">
					<input type="text" class="form-control" name="customer_id" id="search_customerID">
				</div>
				<div class="col-sm-2">
					<button type="button" class="btn btn-info btn-sm" id="customerID"><span class="fa fa-search"></span></button>
				</div>
				<br><br><br>
	  			<table id="searchTable" class="table table-bordered table-hover">
	  				
				</table>
				<div id="useBtnArea">
					<input type="button" class="btn btn-default center useBtn" value="사용" data-dismiss="modal">
				</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 거래처 끝 -->
	<form class="form-horizontal" action="SearchPurchase.pc">
		<table class="table table-bordered table-hover new">
			<tr>
				<td>기준일자</td>
				<td>
				
				<div class="col-sm-6 input-group date purchase_date" name="" id="" data-provide="datepicker">
				    <input type="text" class="form-control"> ~
				    <input type="text" class="form-control">
				</div>
				<!-- <input type="text" class="purchase_date" name="" id=""> ~ <input type="text" class="purchase_date" name="" id="">
				 -->
				 </td>
			</tr>
			<tr>
				<td>거래처코드</td>
				<td>
					<input type="text" name="customer_id" id="customer_id" size="8">
					<button type="button" id="customer_SearchKey" class="btn btn-info btn-sm" data-toggle="modal" data-target="#customerSearch_modal"><span class="fa fa-search"></span></button>
				</td>
			</tr>
			<tr>
				<td>기타</td>			
				<td>
					<input type="text" id="" name="">
					<button id="item_search" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button>				
				</td>
			</tr>
		</table>
		<div class="buttongroup">
			<input type="button" id="searchBtn" class="btn btn-default" value="검색">
		</div>
	</form>
</body>
</html>