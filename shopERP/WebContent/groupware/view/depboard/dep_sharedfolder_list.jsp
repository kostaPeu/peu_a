<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="./groupware/css/dep_sharedfolder_list.css" rel="stylesheet">

<script src="./groupware/js/jquery-1.10.2.min.js"></script>
<script src="./groupware/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- 
<script src="./js/checkbox.js"></script>
 -->
</head>
<body>
	<div class="container col-sm-12">
		<div class="col-sm-9">
			<div class="col-sm-5">
				<button class="ta_ic dw _download" type="button">
					<span>내려받기</span>
				</button>
				<button class="del _delete" type="button">
					<span>삭제</span>
				</button>
			</div>
			<div class="col-sm-7">
				<input class="up_file_all" type="file" title="파일 올리기">
			</div>
		</div>
		<div class="col-sm-3">
			<div class="search_area _quick_search">
				<input id="search_txt" class="input_txt _textbox_quick_search"
					type="text" name="p_search" accesskey="s"> <a
					class="search_btn _link_search_btn_quick_search" href="#"> <label
					for="search_txt">검색</label></a>
			</div>
		</div>
	</div>

	<div class="item_list col-sm-12">
		<ul>
			<li class="item_box">
				<div class="checkbox">
				 <label>
					<input id="input_check" type="checkbox" value="file1">
					<div class="item">
						<img src="./groupware/images/zipimg.png" alt="파일이미지" />
					</div>
					<div class="item_text">
						<span class="item_title">파일명</span>
						<span class="item_size">파일크기</span>
						<span class="item_writer">작성자</span>
					</div>
				 </label>
				 
				</div>
			
			</li>
		</ul>
	</div>
	
	<ul class="pager col-sm-12">
		<li class="previous"><a href="#">Previous</a></li>
		<li><a>1</a></li>
		<li><a>2</a></li>
		<li><a>3</a></li>
		<li class="next"><a href="#">Next</a></li>
	</ul>
		
</body>
</html>