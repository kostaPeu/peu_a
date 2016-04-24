<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/responsive.css">
<script src="/shopERP/js/jquery.min.js"></script>
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/basic/css/basic_customerList.css" rel="stylesheet">
<script src="/shopERP/basic/js/basic_customerList.js" type="text/javascript"></script>
</head>
<body>
	<div class="add xclose">
		<div class="title">
			<span class=""><strong>거래처등록</strong></span>
			<button type="button" class="close closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal" action="">
			<div class="addform">
				<div class="form-group has-feedback">
					<label for="customer_id" class="col-sm-2 control-label"><strong>거래처코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_id">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_name" class="col-sm-2 control-label"><strong>거래처명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="repre_name" class="col-sm-2 control-label"><strong>대표자명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="repre_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_tel" class="col-sm-2 control-label"><strong>전화번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_tel">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_address" class="col-sm-2 control-label"><strong>주소</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_address">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_account" class="col-sm-2 control-label"><strong>계좌번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_account">
						<span></span>
					</div>
				</div>
					<div class="form-group has-feedback radio">
					<label for="account_check" class="col-sm-2 control-label"><strong>통장등록여부</strong></label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_yes" value="check_yes">예
						</label> 
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_no" value="check_no">아니요
						</label>
					</div>
				</div>
				<br>
				<div class="form-group has-feedback">
					<label for="customer_email" class="col-sm-2 control-label"><strong>EMAIL</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_email">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_fax" class="col-sm-2 control-label"><strong>FAX</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_fax">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="checkman" class="col-sm-2 control-label"><strong>담당자</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="checkman">
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
		<form class="form-horizontal" action="">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="customer_id" class="col-sm-2 control-label"><strong>거래처코드</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_id">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_name" class="col-sm-2 control-label"><strong>거래처명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="repre_name" class="col-sm-2 control-label"><strong>대표자명</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="repre_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_tel" class="col-sm-2 control-label"><strong>전화번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_tel">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_address" class="col-sm-2 control-label"><strong>주소</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_address">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_account" class="col-sm-2 control-label"><strong>계좌번호</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_account">
						<span></span>
					</div>
				</div>
					<div class="form-group has-feedback radio">
					<label for="account_check" class="col-sm-2 control-label"><strong>통장등록여부</strong></label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_yes" value="check_yes">예
						</label> 
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_no" value="check_no">아니요
						</label>
					</div>
				</div>
				<br>
				<div class="form-group has-feedback">
					<label for="customer_email" class="col-sm-2 control-label"><strong>EMAIL</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_email">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_fax" class="col-sm-2 control-label"><strong>FAX</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_fax">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="checkman" class="col-sm-2 control-label"><strong>담당자</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="checkman">
						<span></span>
					</div>
				</div>
				<button class="btnn btn btn-default" type="submit" id="saveBtn">등록</button>
			</div>
		</form>
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
		<tr>
			<td><input type="checkbox"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<div class="buttongroup">
		<input type="button" id="newBtn" class="btn btn-default" value="등록">
		<input type="button" id="updateBtn" class="btn btn-default" value="수정">
		<input type="button" id="deleteBtn" class="btn btn-default" value="삭제">
	</div>
</body>
</html>