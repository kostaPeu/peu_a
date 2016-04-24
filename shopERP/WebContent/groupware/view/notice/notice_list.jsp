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
		<form>
			<div class="form-group">
				<label for="exampleInputEmail1">글 제목</label> <input type="text"
					class="form-control" id="exampleInputEmail1" placeholder="title">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">글 내용</label>
				<textarea class="form-control" rows="5" id="comment"
					placeholder="contents"></textarea>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>