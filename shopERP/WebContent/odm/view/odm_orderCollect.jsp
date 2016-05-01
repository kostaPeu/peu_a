<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/shopERP/odm/css/odm.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$('#collectBtn').on('click', function(){
	 		$("input[name=shopList]:checked").each(function() {
				var checks = $(this).val();
				$(location).attr("href","orderCollect.odm?checks="+checks);
				alert("수집이 완료되었습니다.1");
			});
	 		/* $('.success').css("display","block"); */
			/* $('.failed').css("display","block"); */

		});
/* 	$('.closeBtn').click(function(){
		$('.xclose').css("display","none");
	}); */
	/* $('#successBtn').click(function(){
		$(location).attr("href","shoppingMallList.odm");
	}) */
})
</script>
</head>
<body>
	<div class="success xclose">
		<div class="title">
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<br><br>
		<div class="localcenter"><strong>수집이 완료되었습니다.</strong>
			<button type="button" id="successBtn">확인</button> </div>
	</div>
		<div class="failed xclose">
		<div class="title">
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="localcenter"><strong>에러!</strong></div>
	</div>
	<div class="search">
		<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<th><input type="checkbox"></th>
					<th>쇼핑몰이름</th>
					<th>주문수집일</th>
				</tr>
				<c:forEach var="shop" items="${list }">
					<tr class="localcenter">
						<td><input type="checkbox" value="${shop.shoppingmall_name }" name="shopList"></td>
						<td>${shop.shoppingmall_name }</td>
						<td>${shop.collect_date }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="localcenter"><input type="button" id="collectBtn" class="btn btn-default" value="수집"></div>
			
		</div>
	</div>
</body>
</html>