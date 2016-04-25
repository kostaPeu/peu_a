<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<h2>이미지 게시판</h2>
		<table class="table table-hover">
			<tr class="row">
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
			</tr>
			<tr class="row">
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
			</tr>
			<tr class="row">
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic1.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>16.04.25</p>
					<p>김보람</p>
				</td>
				<td class="col-sm-3">
					<img src="../groupware/images/image_pic2.png" alt="게시한이미지"/>
					<a href="#">이미지제목</a>
					<p>오파도</p>
				</td>
			</tr>
			
		</table>

		<ul class="pager">
			<li class="previous"><a href="#">Previous</a></li>
			<li><a>1</a></li>
			<li><a>2</a></li>
			<li><a>3</a></li>
			<li class="next"><a href="#">Next</a></li>
		</ul>

		<div class="col-xs-2">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
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