<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<a type="button" href="noticeUpdateFormAction.gw?notice_id=${notice.notice_id }" class="btn btn-default">수정</a>
			<a type="button" href="noticeDeleteAction.gw?notice_id=${notice.notice_id }" class="btn btn-default">삭제</a>
			<a type="button" href="noticeListAction.gw" class="btn btn-default">목록</a>
		</div>

		<form action="noticeReplyInsertAction.gw?notice_id=${notice.notice_id }" method="post">
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
				
					<c:if test="${list.size()-1 >=0}">
						<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
							<li>
								<div style="margin-left: 0px;">
									<div class="panel panel-warning">
										<div class="panel-heading">
											<span class="text-muted">${re_name.get(i) }</span>
										</div>
										<div class="panel-body">${list.get(i).getNreply_content() }</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</c:if>
				</ul>
				<textarea id="co_content" class="form-control" rows="2" name="no_reply"></textarea>
				<button type="submit" class="btn btn-default">댓글달기</button>	
			</div>	
		</form>
	</div>
</body>
</html>

