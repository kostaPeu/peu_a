<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<p>공지사항 > ${notice.notice_id }번 글</p>

		<div class="page-header">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">${notice.notice_title }</h4>
					<small> 글번호 : ${notice.notice_id } 작성자 : ${e_name}
					작성일 : <fmt:formatDate value="${notice.notice_date }" pattern="yyyy-MM-dd" /> 조회수 : ${notice.notice_hit }</small>
				</div>
			</div>
		</div>
		<div id="write_content">
			<p>${notice.notice_content }</p>
			<hr>
		</div>
		<div class="row">
			<a type="button" href="./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_write.jsp"
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

