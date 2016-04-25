<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<script src="/shopERP/accounting/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
</head>
<body id="body_html" class="font-dotum">
	<!-- 상단 컨텐츠 이름 -->
	<div class="contentsName">
		<a id="title">입출금보고서</a>
	</div>

	<form class="form-horizontal" action="">
		<table class="table table-bordered table-hover new" id="saleList">
			<thead>
				<tr id="abc">
					<th><input type="checkbox"></th>
					<th><input type="button"
						class="btn btn-default btn-sm saleListAdd" value="▼"></input></th>
					<th>계정코드</th>
					<th>계좌번호</th>				
					<th>거래처</th>
					<th>금액</th>
					<th>수수료</th>
					<th>부서</th>
					<th>프로젝트</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td><input type="button"
						class="btn btn-default btn-sm saleListAdd" value="▼"></input></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id="" size="35"></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td><input type="button"
						class="btn btn-default btn-sm saleListAdd" value="▼"></input></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id="" size="35"></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td><input type="button"
						class="btn btn-default btn-sm saleListAdd" value="▼"></input></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id="" size="35"></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
				</tr>
			
				<tr style="text-align: center; font-size: 14px; font-weight: bold;">
				<td colspan="3">금액합계</td>
				<td colspan="2"><input type="text" name="" id="" width="100%" size="65"
					disabled="disabled"></td>
				<td colspan="2">수수료합계</td>
				<td colspan="3"><input type="text" name="" id="" disabled="disabled"
					size="65" width="20"></td>
			</tr>
			</tbody>
		</table>

		<table class="table table-bordered table-hover new">
			
		</table>
		
		<div id="footer-Group" class="footer footer-fixed"
			style="display: block;">
			<div class="wrapper-toolbar">
				<div class="buttongroup" align="right">
					<button id="btn-footer-Save" class="btn btn-xs btn-default"
						type="Submit">저장</button>
					<button id="btn-footer-Reset" class="btn btn-xs btn-default"
						value="reset" type="button">다시작성</button>
					<button id="btn-footer-Close" class="btn btn-xs btn-default"
						type="button">닫기</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>