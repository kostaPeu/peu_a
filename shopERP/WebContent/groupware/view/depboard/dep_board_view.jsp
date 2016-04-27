<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>

</head>
<body>
	<div class="container">
		<p>공지사항 > 10001번 글</p>

		<div class="page-header">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">이거슨 글의 제목</h4>
					<small> 글번호 : 10001 작성자 : 김밥 작성일 : 2016-04-24 조회수 : 13</small>
				</div>
			</div>
		</div>
		<div id="write_content">
			<p>이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용 , 이거슨 글의
				내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용 , 이거슨 글의 내용, 이거슨 글의
				내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용 , 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의
				내용, 이거슨 글의 내용, 이거슨 글의 내용 , 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의 내용, 이거슨 글의
				내용</p>
			<hr>
		</div>

		<div class="row">
			<a type="button" href="./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/depboard/dep_board_edit.jsp"
				class="btn btn-default">수정</a>
			<button type="button" class="btn btn-default">삭제</button>
			<button type="button" class="btn btn-default">목록</button>
		</div>

		<div id="view_comment">
			<ul class="list-unstyled">
				<li>
					<div style="margin-left: 0px;">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<span class="text-muted">작성자</span>
							</div>
							<div class="panel-body">내용</div>
						</div>
					</div>
				</li>
			</ul>
			<textarea id="co_content" class="form-control" rows="2"
				name="co_content"></textarea>
			<button type="button" class="btn btn-default">댓글달기</button>

		</div>
	</div>
</body>
</html>