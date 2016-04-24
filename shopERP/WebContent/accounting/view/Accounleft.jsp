<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/js/jquery.js"></script>
<script src="/shopERP/js/main.js" type="text/javascript"></script>
<script src="/shopERP/js/bootstrap.min.js"></script>
<link href="/shopERP/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

		<div class="wrapper-erp-local-nav">
			<div class="erp-local-nav-title">회계관리</div>
			<div class="erp-local-nav">
				<ul class="local">
					<li><a href="./accounting/view/money_check.jsp">재무상태표</a></li>
					<li><a class="" data-target="#one" data-toggle="collapse" href="javascript:;">회계 기초등록</a>
						<ul id="one" class="collapse"  style="">
							<li><a href="#">기초잔액등록</a></li>
							<li><a href="/shopERP/accounting/view/card.jsp">신용카드등록</a></li>
							<li><a href="/shopERP/accounting/view/BackBook.jsp">통장계좌등록</a></li>
							<li><a href="/shopERP/accounting/view/Project.jsp">프로젝트등록</a></li>
							<li><a href="#">자금등록</a></li>
						</ul>
					</li>					
					
					<li><a class="" data-target="#two" data-toggle="collapse" href="javascript:;" >현금거래관리</a>
						<ul id="two" class="collapse"  style="">
							<li><a href="#">입금보고서</a></li>
							<li><a href="#">출금보고서</a></li>
							<li><a href="#"></a></li>
							<li><a href="#">자금등록</a></li>
						</ul>					
					</li>
					<li><a class="" data-target="#three" data-toggle="collapse" href="javascript:;">어음원장관리</a>
						<ul id="three" class="collapse" style="">
							<li><a href="#">지급어음결재</a></li>
							<li><a href="#">지급어음등록</a></li>
							<li><a href="#">받을어음결재</a></li>
							<li><a href="#">받음어음등록</a></li>
						</ul>					
					</li>
					<li><a class="" data-target="#four" data-toggle="collapse" href="javascript:;">채무채권관리</a>
						<ul id="four" class="collapse"  style="">
							<li><a href="#">채권관리</a></li>
							<li><a href="#">채무관리</a></li>
							<li><a href="#">채권채무현황</a></li>			
						</ul>		
					</li>
					<li><a class="" data-target="#five" data-toggle="collapse" href="javascript:;">자금계획관리</a>
						<ul id="five" class="collapse" style=""></ul>
					</li>
					
					<li><a class="" data-target="#one" data-toggle="collapse" href="javascript:;" aria-expanded="false">회계 기초등록</a>
						<ul id="one" class="collapse" aria-expanded="false" style="">
							<li><a href="#">기초잔액등록</a></li>
							<li><a href="/shopERP/accounting/view/card.jsp">신용카드등록</a></li>
							<li><a href="/shopERP/accounting/view/BackBook.jsp">통장계좌등록</a></li>
							<li><a href="/shopERP/accounting/view/Project.jsp">프로젝트등록</a></li>
							<li><a href="#">자금등록</a></li>
						</ul>
					</li>					
					
					<li><a class="" data-target="#two" data-toggle="collapse" href="javascript:;" aria-expanded="false">현금거래관리</a>
						<ul id="two" class="collapse" aria-expanded="false" style="">
							<li><a href="#">입금보고서</a></li>
							<li><a href="#">출금보고서</a></li>
							<li><a href="#"></a></li>
							<li><a href="#">자금등록</a></li>
						</ul>					
					</li>
					<li><a class="" data-target="#three" data-toggle="collapse" href="javascript:;" aria-expanded="false">어음원장관리</a>
						<ul id="three" class="collapse" aria-expanded="false" style="">
							<li><a href="#">지급어음결재</a></li>
							<li><a href="#">지급어음등록</a></li>
							<li><a href="#">받을어음결재</a></li>
							<li><a href="#">받음어음등록</a></li>
						</ul>					
					</li>
					<li><a class="" data-target="#four" data-toggle="collapse" href="javascript:;" aria-expanded="false">채무채권관리</a>
						<ul id="four" class="collapse" aria-expanded="false" style="">
							<li><a href="#">채권관리</a></li>
							<li><a href="#">채무관리</a></li>
							<li><a href="#">채권채무현황</a></li>			
						</ul>		
					</li>
					<li><a class="" data-target="#five" data-toggle="collapse" href="javascript:;" aria-expanded="false">자금계획관리</a>
						<ul id="five" class="collapse" aria-expanded="false" style="">
							<li><a href="#">자금계획등록</a></li>
							<li><a href="#">자금계획조회</a></li>										
						</ul>	
					</li>
				</ul>
			</div>
		</div>


</body>
</html>
