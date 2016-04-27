<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>

</head>
<body>

	<div class="container">
		<h2>공지사항</h2>
		<table class="table table-hover">
			<thead>
				<tr class="row">
					<th class="col-sm-1">글번호</th>
					<th class="col-sm-6">제목</th>
					<th class="col-sm-2">작성자</th>
					<th class="col-sm-2">작성일</th>
					<th class="col-sm-1">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size()-1 >=0}">
					<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
						<tr class="row">
							<td class="col-sm-1">${list.get(i).getNotice_id()}</td>
						 	<td class="col-sm-6"><a href="noticeViewAction.gw?notice_id=${list.get(i).getNotice_id()}">${list.get(i).getNotice_title() }</a></td>
							<td class="col-sm-2">${e_name_list.get(i)}</td>
							<td class="col-sm-2"><fmt:formatDate value="${list.get(i).getNotice_date() }"
									pattern="yyyy-MM-dd" /></td>
							<td class="col-sm-1">${list.get(i).getNotice_hit()}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<ul class="pager">
			<li class="previous"><a href="#">Previous</a></li>
			<li><a>1</a></li>
			<li><a>2</a></li>
			<li><a>3</a></li>
			<li class="next"><a href="#">Next</a></li>
		</ul>

		<div class="row">
			<a href="./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_write.jsp"	class="btn btn-info col-sm-1 col-sm-push-11">글쓰기</a>
		</div>

		<div class="col-xs-2">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					제목+내용 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu col-xs-2">
					<li><a href="#">제목</a></li>
					<li><a href="#">내용</a></li>
					<li><a href="#">작성자</a></li>
				</ul>
			</div>
		</div>
		<div class="col-xs-2">
			<input class="form-control" id="ex1" type="text">
		</div>
		<button type="button" class="btn btn-default">검색</button>
	</div>

</body>
</html>