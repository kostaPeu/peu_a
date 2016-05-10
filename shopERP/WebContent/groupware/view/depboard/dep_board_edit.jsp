<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="container">

	<h2 class="page_title">부서게시판</h2>

		<div class="write_header">
			<label class="control-label col-sm-1" for="title">제목</label>
			<div class="col-sm-11">
				<input type="text" class="form-control" id="title"
					placeholder="제목 입력">
			</div>
		</div>

		<div id="write_content">
			<label class="control-label col-sm-1" for="content">내용</label>
			<div class="col-sm-11">
				<textarea class="form-control" rows="5" id="content"></textarea>
			</div>
		</div>

		<div id="file-upload">
			<label class="control-label col-sm-1" for="title">첨부파일</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="title" placeholder="경로">
				<button type="button" class="btn btn-default">찾기</button>
			</div>
		</div>

		<div class="col-sm-2 col-sm-push-10">
			<button type="button" class="btn btn-default">등록</button>
			<button type="button" class="btn btn-default">목록</button>
		</div>

	</div>
</body>
</html>