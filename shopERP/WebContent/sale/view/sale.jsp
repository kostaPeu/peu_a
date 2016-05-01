<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/shopERP/js/ajax.js"></script>
<style type="text/css" src="/shopERP/sale/css/sale.css"></style>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">판매관리</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="SaleList.sale">판매조회</a></li>
				<li><a href="./mainTest2.jsp?left=./sale/view/sale.jsp&contents=./sale/view/sale_search.jsp">판매현황</a></li>
				<li><a href="./mainTest2.jsp?left=./sale/view/sale.jsp&contents=./sale/view/sale_accounts.jsp">판매처별 정산</a></li>	
				<li><a class="" data-target="#five" data-toggle="collapse" href="javascript:;">사입관리</a>
					<ul id="five" class="collapse">
						<li><a href="CbuyList.sale">사입 이력 조회</a></li>
						<li><a href="./sale/view/buyingMgt_add.jsp">입고 상품 등록</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>