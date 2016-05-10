<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- <link href="/shopERP/basic/css/basic_customerList.css" rel="stylesheet"> -->
<script src="/shopERP/basic/js/basic2.js" type="text/javascript"></script>
</head>
<body>
	<div class="update xclose">
		<div class="title">
			<span class=""><strong>�ŷ�ó����</strong></span>
			<button type="button" class="close closeBtn"><span>&times;</span></button>
		</div>
		<form class="form-horizontal" action="">
			<div class="updateform">
				<div class="form-group has-feedback">
					<label for="customer_id" class="col-sm-2 control-label"><strong>�ŷ�ó�ڵ�</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_id" disabled="disabled" value="${customer.customer_id }">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_name" class="col-sm-2 control-label"><strong>�ŷ�ó��</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="repre_name" class="col-sm-2 control-label"><strong>��ǥ�ڸ�</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="repre_name">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_tel" class="col-sm-2 control-label"><strong>��ȭ��ȣ</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_tel">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_address" class="col-sm-2 control-label"><strong>�ּ�</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_address">
						<span></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label for="customer_account" class="col-sm-2 control-label"><strong>���¹�ȣ</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="customer_account">
						<span></span>
					</div>
				</div>
					<div class="form-group has-feedback radio">
					<label for="account_check" class="col-sm-2 control-label"><strong>�����Ͽ���</strong></label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_yes" value="check_yes">��
						</label> 
						<label class="radio-inline"> 
							<input type="radio" name="account_check" id="check_no" value="check_no">�ƴϿ�
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
					<label for="checkman" class="col-sm-2 control-label"><strong>�����</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="checkman">
						<span></span>
					</div>
				</div>
				<button class="btnn btn btn-default" type="submit" id="saveBtn">���</button>
			</div>
		</form>
	</div>
</body>
</html>