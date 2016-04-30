<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<script src="/shopERP/accounting/js/ac.js" type="text/javascript"></script>

<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
</head>
<body>
	<!-- 카드 신규추가 -->
	<div class="newAddCard miniTitle-panel">
		<div class="miniMenuTitle" aria-labelledby="ui-id-1">
			<!-- 상단툴바  -->
			<span class="title-name" id="ui-id-1"><i
				class=" glyphicon glyphicon-edit"></i>신용카드등록</span>
			<button id="closeBtn" class="close" type="button">
				<span>X</span>
			</button>
		</div>
		<!--/상단툴바  -->
		<form action="insertCard.ac" method="post">
			<!-- 카드 신규추가 본문 START-->
			<div class="contents contents-fixed" style="top: 29px; bottom: 34px">
				<table
					class="table table-bordered table-hover table-left table-striped">
					<colgroup>
						<col style="width: 149px;">
						<col style="width: 600px;">
					</colgroup>
					<tbody>
						<tr id="row-UseCheck">
							<th>구분 <span class="card-Info" data-html="true"
								data-toggle="popover" data-trigger="focus hover"
								data-placement="right" data-original-title="" title=""></span>
							</th>
							<td>
								<div class="radio-inline">
									<label> <input id="optionsRadios-1" type="radio"
										checked="" value="yes" name="type">회사
									</label>
								</div>
								<div class="radio-inline">
									<label> <input id="optionsRadios2" type="radio"
										value="no" name="type">사원
									</label>
								</div>
							</td>
						</tr>
						<tr id="row-CardCode">
							<th>카드번호</th>
							<td><input class="form-control" type="text"
								placeholder="카드번호" name="card_number"></td>
						</tr>

						<tr id="row-CardName">
							<th>카드명</th>
							<td><input class="form-control" type="text"
								placeholder="카드명" name="card_name"></td>
						</tr>
						<tr id="row-BankBookNum">
							<th>계좌번호</th>
							<td><input class="form-control" type="text"
								placeholder="계좌번호" name="account_number"></td>
						</tr>

						<tr id="row-Employee">
							<th>사원번호</th>
							<td><input class="form-control" type="text"
								placeholder="사원번호" name=emp_id></td>
						</tr>

						<tr id="row-UseContent">
							<th>계정명</th>
							<td><input class="form-control" type="text"
								placeholder="계정명" name="use_detail"></td>
						</tr>

						<tr id="row-UseCheck">
							<th>사용여부 <span class="card-Info" data-html="true"
								data-toggle="popover" data-trigger="focus hover"
								data-placement="right" data-original-title="" title=""></span>
							</th>
							<td>
								<div class="radio-inline">
									<label> <input id="optionsRadios-1" type="radio"
										checked="" value="yes" name="use">사용
									</label>
								</div>
								<div class="radio-inline">
									<label> <input id="optionsRadios2" type="radio"
										value="no" name="use">정지
									</label>
								</div>
							</td>
						</tr>

						<tr id="row-note">
							<th>비고</th>
							<td><input class="form-control" type="text" value=""
								placeholder="비고" name="remarks"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /카드신규추가본문 END -->

			<!-- 신규카드 footer START -->
			<div class="footer footer-fixed" id="footer-Group"
				style="display: block;">
				<div class="wrapper-toolbar">
					<div class="pull-reft"></div>
					<div class="pull-right" id="button-Group">
						<button id="btn-footer-Save" class="btn btn-xs btn-default"
							type="Submit">저장</button>
						<button id="btn-footer-Reset" class="btn btn-xs btn-default"
							type="button" value="reset">다시작성</button>
						<button id="btn-footer-Close" class="btn btn-xs btn-default"
							type="button">닫기</button>
					</div>
				</div>
			</div>
			<!-- 신규카드 footer END -->
		</form>
	</div>
	<!-- 신규카드END -->
</body>
</html>