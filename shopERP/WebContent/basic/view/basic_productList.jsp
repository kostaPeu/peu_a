<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Custom CSS -->
<link href="/shopERP/basic/css/basic_productList.css" rel="stylesheet">
<script src="/shopERP/basic/js/basic.js" type="text/javascript"></script>
</head>
<body>

	<h2 class="page_title">품목관리</h2>
	
	<div class="add xclose">
		<div class="title">
			<span class=""><strong>품목등록</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<form class="form-horizontal" action="insertProduct.ba" method="post">
			<div class="addform">
				<div class="form-group has-feedback">
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong></label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="product_id" name="product_id">
					</div>
					<div class="col-sm-1">
						<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal"><span class="fa fa-search"></span></button>
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
							<option value="sd1">sd1</option>
							<option value="sd2">sd2</option>
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
				<form class="form-horizontal" action="updateProduct.ba" method="post">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="product_id" class="col-sm-2 control-label"><strong>품목코드</strong>
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control product_id2" disabled="disabled">
						<input type="hidden" name="product_id" class="product_id2">
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="product_name" class="col-sm-2 control-label"><strong>품목명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="product_name2" name="product_name"><span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="pgroup_name" class="col-sm-2 control-label">그룹명</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="pgroup_id2" name="pgroup_id">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_customer" class="col-sm-2 control-label">원산지</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="made_in2" name="made_in">
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="standard" class="col-sm-2 control-label">규격명</label>
					<div class="col-sm-10">
						<select class="form-control" id="standard_id2" name="standard_id">
							<option value="sd1">sd1</option>
							<option value="sd2">sd2</option>
						</select>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_customer" class="col-sm-2 control-label">바코드</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="barcode2" name="barcode">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="in_price" class="col-sm-2 control-label">입고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price_in2" name="price_in"> <span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="out_price" class="col-sm-2 control-label">출고단가</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price_out2" name="price_out"> <span></span>
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
				<th>원산지</th>
				<th>규격명</th>
			</tr>
		</thead>
		<c:forEach var="product" items="${listModel.list }">
			<tr>
				<td><input type="checkbox" class="productChecked" name="productRow" value="${product.product_id }"></td>
				<td>${product.product_id }</td>
				<td>${product.product_name }</td>
				<td>${product.pgroup_name }</td>
				<td>${product.barcode }</td>
				<td>${product.price_in }</td>
				<td>${product.price_out }</td>
				<td>${product.made_in }</td>
				<td>${product.standard_name }</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${listModel.startPage > 5 }">
		<a href="productList.ba?pageNum=${listModel.startPage - 5}">[이전]</a>
	</c:if>
	<c:forEach var="page" begin="${listModel.startPage }" end="${listModel.endPage }">
		<c:if test="${listModel.requestPage == page }"><b></c:if>
		<a href="productList.ba?pageNum=${page }">[${page }]</a>
	 	<c:if test="${listModel.requestPage == page }"></b></c:if>
	</c:forEach>
	<c:if test="${listModel.endPage < listModel.totalPageCount}">
		<a href="productList.ba?pageNum=${listModel.startPage + 5}">[다음]</a>
	</c:if>
	<div class="buttongroup">
		<input type="button" id="newBtn" class="btn btn-default" value="등록">
		<input type="button" id="updateBtn" class="btn btn-default" value="수정">
		<input type="button" id="deleteBtn" class="btn btn-default" value="삭제">
	</div>
	
	


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      
    <div class="modal-content">
	<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">중복확인(품목코드)</h4>
      </div>
      <div class="modal-body">
			<div class="col-sm-10">
				<input type="text" class="form-control" name="product_id" id="search_product">
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-info btn-sm" id="search_id"><span class="fa fa-search"></span></button>
			</div>
			<br><br><br>
  				<table id="searchTable" class="table table-bordered">
				</table>
				<div id="useBtnArea">
					<input type="button" id="useBtn" class="btn btn-default center" value="사용">
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