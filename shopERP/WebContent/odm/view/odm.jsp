<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">주문/배송관리</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a class="" data-target="#one" data-toggle="collapse" href="javascript:;">주문관리</a>
						<ul id="one" class="collapse local"  style="">
							<li><a href="shoppingMallList.odm">주문수집</a></li>
							<li><a href="orderList.odm">주문리스트</a></li>
						</ul>
					</li>					
				<li><a href="./mainTest2.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_deliveryList.jsp">배송리스트</a></li>
				<li><a href="./mainTest2.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_crMgt.jsp">취소/환불관리</a></li>
				<li><a href="./mainTest2.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_csMgt.jsp">C/S관리</a></li>
			</ul>
		</div>
	</div>
</body>
</html>