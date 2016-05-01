<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">

</head>
<body id="body_html" class="font-dotum">
	<!-- 상단 컨텐츠 이름 -->
	<div class="mainContents">
		<div class="contentsName">
			<a id="title">통장계좌리스트</a>
		</div>
		<br>
		<!-- 통장계좌리스트 -->
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped"
					id="Card">
					<thead id="cardList">
						<tr class="mainTable">
							<th><input type="checkbox" disabled="disabled"></th>
							<th>계좌번호</th>
							<th>계좌명</th>
							<th>계정번호</th>
							<th>검색창내용</th>
							<th>사용여부</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody id="cardInfos">
						<c:forEach var="a" items="${list}">
							<tr class="mainTable">
								<td><input type="checkbox" class="upSelect check_id"
									name="id_box"></td>
								<td>${a.account_number }</td>
								<td>${a.account_name}</td>
								<td>${a.code }</td>
								<td>${a.account_detail }</td>
								<td>${a.use }</td>
								<td>${a.remarks }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="buttongroup">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#exampleModal" data-whatever="@mdo">신규등록</button>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#exampleModal" data-whatever="@fat">수정</button>
				<input type="button" id="newBtn" class="btn btn-default" value="삭제">
			</div>
		</div>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">
							<strong>통장계좌 신규등록</strong>
						</h4>
					</div>

					<form action="insertAccount.ac" method="post">
						<div class="modal-body">
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="control-label">계좌번호</label> <input
										class="form-control" type="text" placeholder="계좌번호"
										name="account_number">
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">계좌명</label> <input
										class="form-control" type="text" placeholder="계좌명"
										name="account_name">
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">계정코드</label> <a
										data-toggle="modal" href="#myModal2"><button type="button"
											class="btn btn-default btn-sm" id="account_numbers">
											<span class="fa fa-search"></span>
										</button></a> <input class="form-control" type="text" placeholder="계좌번호"
										name="code" id="account_number">
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">검색창내용</label><input
										class="form-control" type="text" placeholder="검색창내용"
										name="account_detail">
								</div>
								<div class="form-group">
									<label for="recipient-name" class="control-label">사용여부</label>
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
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">비고</label><input
										class="form-control" type="text" placeholder="비고"
										name="remarks">
								</div>
								<div class="modal-footer">
									<input type="submit" class="btn btn-default" value="저장">
									<input type="reset" class="btn btn-default" value="다시작성">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="취소">
								</div>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>