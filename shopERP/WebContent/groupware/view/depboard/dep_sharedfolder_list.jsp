<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./groupware/css/dep_sharedfolder_list.css" rel="stylesheet">
<script src="./groupware/js/dep_sharedfolder_list.js"></script>
<script src="./js/checkbox.js"></script>

</head>
<body>

	<h2 class="page_title">공유폴더</h2>
	
	<form class="form-inline pull-left sharefolderForm" name="sharefolderForm" method="post" enctype="multipart/form-data">
			<input class="btn btn-sm btn-default form-control" type="file" id="fileUp" name="filename" multiple title="파일 올리기">
			<button class="btn btn-sm btn-default form-control" type="button" onclick="onUpload()">
				<span>올리기</span>
			</button>
			<button class="btn btn-sm btn-default form-control" type="button" onclick="onDownload()">
				<span>내려받기</span>
			</button>
			<button class="btn btn-sm btn-default form-control" type="button">
				<span>삭제</span>
			</button>
			<input id="search_txt" class="form-control"
				type="text" name="p_search" accesskey="s">
			<button class="btn btn-sm btn-warning form-control" href="#"><span>검색</span></button>
		
		<div class="item_list">
			<c:if test="${list.size()-1 >=0}">
			<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
				<div class="item_box">
				  <label>
					  	<input id="input_check" name="fileCheck" type="checkbox" autocomplete="off" value="${list.get(i).getShare_folder_id() }">
						<c:choose>
							<c:when test="${list.get(i).getFile_type().substring(0,5).equals('image')}">
								<div class="imagefile item"></div>
							</c:when>
							<c:otherwise>
								<div class="item">
									<c:choose>
										<c:when test="${list.get(i).getFile_type() =='application/zip' }">
											<img src="./groupware/images/zipfile.jpg" alt="zip file image" />
											<span class="file_type_text">ZIP</span>
										</c:when>
										<c:when test="${list.get(i).getFile_type().substring(0,5).equals('audio') }">
											<img src="./groupware/images/musicfile.jpg" alt="music file image" />
											<span class="file_type_text">Audio</span>
										</c:when>
										<c:when test="${list.get(i).getFile_type().substring(0,4).equals('text') }">
											<img src="./groupware/images/textfile.jpg" alt="text file image" />
											<span class="file_type_text">Text</span>
										</c:when>
										<c:otherwise>
											<img src="./groupware/images/otherfile.jpg" alt="other file image" />
											<span class="file_type_text">File</span>
										</c:otherwise>
									</c:choose>
								</div>
							</c:otherwise>
						</c:choose>

						<div class="item_text">
							<span class="item_title" value="${list.get(i).getFile_name() }">${f_name_list.get(i) }</span>
							<span class="item_size">${list.get(i).getFile_size() }</span>
							<span class="item_writer">${e_name_list.get(i)}</span>
						</div>
				  </label>
				</div>
			</c:forEach>
			</c:if>
		</div>
		
	</form>
	
	<ul class="pager">
		<li class="previous"><a href="#">Previous</a></li>
		<li><a>1</a></li>
		<li class="next"><a href="#">Next</a></li>
	</ul>
		
</body>
</html>