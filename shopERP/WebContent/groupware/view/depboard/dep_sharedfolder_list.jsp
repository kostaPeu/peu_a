<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<script src="./js/checkbox.js"></script>
<script type="text/javascript">
	function onUpload() {
		alert("upup");
		var files = document.getElementById("fileUp").files;
		for(var i=0; i<files.length; i++){
			alert(files[i].size);
		}
		
		document.sharefolderForm.action = "depFileInsertAction.gw";
		document.sharefolderForm.submit();
	}
	
	function onDownload() {
		alert("dada");
		document.sharefolderForm.action = "downloadAction.gw";
		document.sharefolderForm.submit();
	}
	
</script>
</head>
<body>
	<div class="container col-sm-12">
	<form name="sharefolderForm" method="post" enctype="multipart/form-data">
		<div class="col-sm-8">
			<div class="col-sm-5">
				<button type="button" onclick="onDownload()">
					<span>내려받기</span>
				</button>
				<button type="button" onclick="onUpload()">
					<span>올리기</span>
				</button>
				<button type="button">
					<span>삭제</span>
				</button>
			</div>
			<div class="col-sm-7">
				<input type="file" id="fileUp" name="filename" multiple title="파일 올리기"><br/>
			</div>
		</div>
		<div class="col-sm-4 search_area_quick_search">
			<input id="search_txt" class="input_txt _textbox_quick_search"
				type="text" name="p_search" accesskey="s">
			<a class="search_btn _link_search_btn_quick_search" href="#">
				<label for="search_txt">검색</label>
			</a>
		</div>
		
		<div class="item_list col-sm-12">
			<c:if test="${list.size()-1 >=0}">
			<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
				<div class="item_box">
				  <label>
					  	<input id="input_check" name="fileCheck" type="checkbox" autocomplete="off" value="${list.get(i).getShare_folder_id() }">
						<div class="item">
							<img src="./groupware/images/zipimg.png" alt="파일이미지" />
						</div>
						<div class="item_text">
							<span class="item_title">${list.get(i).getFile_name() }</span>
							<span class="item_size">${list.get(i).getFile_size() }</span>
							<span class="item_writer">${e_name_list.get(i)}</span>
						</div>
				  </label>
				</div>
			</c:forEach>
			</c:if>
		</div>
		
	</form>
	</div>
	
	<ul class="pager col-sm-12">
		<li class="previous"><a href="#">Previous</a></li>
		<li><a>1</a></li>
		<li class="next"><a href="#">Next</a></li>
	</ul>
		
</body>
</html>