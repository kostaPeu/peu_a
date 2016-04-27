<%@page import="shopERP.basic.model.ErpService"%>
<%@page import="shopERP.basic.model.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

 <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->

<link rel="stylesheet" href="/shopERP/css/style.css">
<link rel="stylesheet" href="/shopERP/css/responsive.css">
<script src="/shopERP/js/jquery.min.js"></script>
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/basic/css/basic_customerList.css" rel="stylesheet">
<script src="/shopERP/basic/js/basic2.js" type="text/javascript"></script>
</head>
<body>
	<div class="add xclose">
		<div class="title">
			<span class=""><strong>거래처등록</strong></span>
			<button type="button" class="close closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal" action="customerProc.ba">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="customer_id" class="col-sm-2 control-label"><strong>거래처코드</strong></label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="customer_id2" name="customer_id">
						<span></span>						
					</div>
					<div class="col-sm-1">
						<button type="button" id="overlap_check2" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_name" class="col-sm-2 control-label"><strong>거래처명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_name" name="customer_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="repre_name" class="col-sm-2 control-label"><strong>대표자명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="repre_name" name="repre_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_tel" class="col-sm-2 control-label"><strong>전화번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone_number" name="phone_number">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_address" class="col-sm-2 control-label"><strong>주소</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_address" name="customer_address">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_account" class="col-sm-2 control-label"><strong>계좌번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="copy_bankbook" name="copy_bankbook">
						<span></span>
					</div>
				</div>
					<div class="form-group has-feedback radio">
					<label for="account_check" class="col-sm-2 control-label"><strong>통장등록여부</strong></label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="radio" name="bankbook_check" id="yes" value="yes">예
						</label> 
						<label class="radio-inline"> 
							<input type="radio" name="bankbook_check" id="no" value="no">아니요
						</label>
					</div>
				</div>
				<br>
				<div class="form-group has-feedback">
					<label for="customer_email" class="col-sm-2 control-label"><strong>EMAIL</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_email" name="customer_email">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_fax" class="col-sm-2 control-label"><strong>FAX</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_fax" name="customer_fax">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="checkman" class="col-sm-2 control-label"><strong>담당자</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="checkman" name="checkman">
						<span></span>
					</div>
				</div>
				<button class="btnn btn btn-default" type="submit" id="saveBtn">등록</button>
			</div>
		</form>
	</div>
	<div class="update xclose">
		<div class="title">
			<span class=""><strong>거래처수정</strong></span>
			<button type="button" class="close closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal" action="UpdateAction.ba">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="customer_id" class="col-sm-2 control-label"><strong>거래처코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control view_id" id="view_id" disabled="disabled" name="view_id">
						<input type="hidden" class="form-control view_id" id="customer_id" name="customer_id">
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_name" class="col-sm-2 control-label"><strong>거래처명</strong></label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="customer_name" name="customer_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="repre_name" class="col-sm-2 control-label"><strong>대표자명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="repre_name" name="repre_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_tel" class="col-sm-2 control-label"><strong>전화번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone_number" name="phone_number">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_address" class="col-sm-2 control-label"><strong>주소</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_address" name="customer_address">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_account" class="col-sm-2 control-label"><strong>계좌번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_account" name="copy_bankbook">
						<span></span>
					</div>
				</div>
					<div class="form-group has-feedback radio">
					<label for="account_check" class="col-sm-2 control-label"><strong>통장등록여부</strong></label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="radio" name="bankbook_check" id="yes" value="check_yes">예
						</label> 
						<label class="radio-inline"> 
							<input type="radio" name="bankbook_check" id="no" value="check_no">아니요
						</label>
					</div>
				</div>
				<br>
				<div class="form-group has-feedback">
					<label for="customer_email" class="col-sm-2 control-label"><strong>EMAIL</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_email" name="customer_email">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_fax" class="col-sm-2 control-label"><strong>FAX</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_fax" name="customer_fax">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="checkman" class="col-sm-2 control-label"><strong>담당자</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="checkman" name="checkman">
						<span></span>
					</div>
				</div>
				<button class="btnn btn btn-default" type="submit" id="updateOkBtn">수정</button>
			</div>
		</form>
	</div>
	<div class="customer_id_check xclose_check">
		<div class="title">
			<span class=""><strong>거래처코드 중복검사</strong></span>
			<button type="button" class="close closeBtn_check" id="item_closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal checkID" action="">
			<div class="form1">
				<div class="form-group has-feedback">				
					<label for="product_id" class="col-sm-2 control-label"><strong>거래처코드</strong></label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="customerIDcheck" name="customerIDcheck">						
						<span></span>					
					</div>
					<div class="col-sm-1">
						<button id="id_search_btn" class="btn btn-default btn-sm" type="submit"><span class="fa fa-search"></span></button>
					</div>
				</div>
				
			</div>
		</form>
		<div class="form-group has-feedback" id="getCheckId">
										
		</div>
		<div class="form-group has-feedback">
			<button id="useCustomerId" class="btn btn-default btn-sm"><span>사용</span></button>							
		</div>		
	</div>
	<table class="table table-bordered table-hover">
		<tr>
			<th><input type="checkbox"></th>
			<th>거래처코드</th>
			<th>거래처명</th>
			<th>대표자명</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>통장사본</th>
			<th>통장등록여부</th>
			<th>EMAIL</th>
			<th>FAX</th>
			<th>담당자</th>
		</tr>
		
		<c:forEach var="list" items="${listModel.list }">
			<tr>
				<td><input type="checkbox" class="upSelect check_id" name="id_box" value="${list.customer_id }"></td>
				<td>${list.customer_id}</td>
				<td>${list.customer_name }</td>
				<td>${list.repre_name }</td>
				<td>${list.phone_number }</td>
				<td>${list.customer_address }</td>
				<td>${list.copy_bankbook }</td>
				<td>${list.bankbook_check }</td>
				<td>${list.customer_email }</td>
				<td>${list.customer_fax }</td>
				<td>${list.checkman }</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${listModel.startPage != 1 }">
		<a href="boardList.jsp?pageNum=1">[이전]</a>
	</c:if>
	<c:forEach var="page" begin="${listModel.startPage }" end="${listModel.endPage }">
		<c:choose>
		<c:when test="${page == listModel.requestPage }">
			<b><a href="CustomerList.ba?pageNum=${page }">[${page }]</a></b>
		</c:when>
		<c:otherwise>
			<a href="CustomerList.ba?pageNum=${page }">[${page }]</a>
		</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${listModel.endPage < listModel.totalPageCount }">
		<a href="boardList.jsp?pageNum=${listModel.startPage + 5}">[다음]</a>
	</c:if>
	<div class="buttongroup">
		<input type="button" id="newBtn" class="btn btn-default" value="등록">
		<input type="button" id="updateBtn" class="btn btn-default" value="수정">
		<input type="button" id="deleteBtn" class="btn btn-default" value="삭제">
	</div>
</body>
</html>