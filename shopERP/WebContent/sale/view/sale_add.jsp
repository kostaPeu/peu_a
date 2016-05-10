<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="/shopERP/sale/css/sale.css" rel="stylesheet">
    <script src="/shopERP/sale/js/sale.js" type="text/javascript"></script>
</head>

<body>

	<h2 class="page_title">판매입력</h2>

	<form class="form-horizontal" action="insertSale.sale">
		<table class="table table-bordered table-hover new" id="saleList">
				<thead>
					<tr>
						<th>판매번호</th>
						<th>거래처코드</th>
						<th>품목코드</th>
						<th>판매금액</th>
						<th>판매수량</th>
						<th>입고창고</th>
						<th>지급방법</th>					
					</tr>
				</thead>
				<tr>
					<td><input type="text" name="sell_id" id="sell_id" size="8"></td>
					<td>
						<input type="text" name="customer_id" id="customer_id" size="15">
						<button type="button" id="customer_SearchKey" class="btn btn-info btn-sm" data-toggle="modal" data-target="#customerSearch_modal"><span class="fa fa-search"></span></button>
					</td>
					<td>
						<input type="text" name="product_id" id="product_id" size="15">
						<button type="button" id="product_SearchKey" class="btn btn-info btn-sm" data-toggle="modal" data-target="#productSearch_modal"><span class="fa fa-search"></span></button>
					</td>
					<td><input type="text" name="sell_price" id="sell_price" size="15"></td>
					<td><input type="text" name="sell_amount" id="sell_amount" size="15"></td>
					<td>
						<input type="text" name="warehouse_id" id="warehouse_id" size="15">
						<button type="button" id="warehouse_SearchKey" class="btn btn-info btn-sm" data-toggle="modal" data-target="#warehouseSearch_modal"><span class="fa fa-search"></span></button>
					</td>
					<td>
						<select  name="pay_type" class="form-control">
							<option value="cash">현금</option>
							<option value="bill">어음</option>
						</select>
					</td>
				</tr>
			</table>
			<!-- <table class="table table-bordered table-hover new">
				<tr>
					<td>수량</td>
					<td><input type="text" name="" id=""></td>
					<td>합계금액</td>
					<td><input type="text" name="" id=""></td>
				</tr>
			</table> -->
		<div class="buttongroup">
			<input type="submit" id="save" class="btn btn-default" value="저장">			
		</div>
	</form>
<!-- 모달 -->

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
</div>
<!-- 품목 검색 -->
<div id="productSearch_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      
    <div class="modal-content">
	<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">품목 검색</h4>
      </div>
      <div class="modal-body">
			<div class="col-sm-10">
				<input type="text" class="form-control" name="product_id" id="search_productID">
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-info btn-sm" id="productID"><span class="fa fa-search"></span></button>
			</div>
			<br><br><br>
  			<table id="p_searchTable" class="table table-bordered table-hover">
  				
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
</div>
<!-- 창고 검색 -->
<div id="warehouseSearch_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      
    <div class="modal-content">
	<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">창고 검색</h4>
      </div>
      <div class="modal-body">
			<div class="col-sm-10">
				<input type="text" class="form-control" name="warehouse_id" id="search_warehouseID">
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-info btn-sm" id="warehouseID"><span class="fa fa-search"></span></button>
			</div>
			<br><br><br>
  			<table id="w_searchTable" class="table table-bordered table-hover">
  				
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
</div>
</body>
</html>