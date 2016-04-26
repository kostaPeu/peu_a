<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="./groupware/css/imageboard_list.css">


<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>

</head>
<body>
	
	<div class="container">
		<h2>이미지 게시판</h2>
		<table id="imageboard_list" class="td-over">
			<tr>
				<td>
					<a href="./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/imageboard/imageboard_view.jsp">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic1.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>김보람</span>
						</p>
					</div>
					</a>
				</td>
				<td>
					<a href="#">
					<div class="box">
						<img class="list_img" src="./groupware/images/image_pic2.png" alt="게시한이미지"/>
						<h3>이미지제목</h3>
						<p>
							<span>16.04.25</span><br/>
							<span>오파도</span>
						</p>
					</div>
					</a>
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