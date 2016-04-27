<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/css/bootstrap.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">

</head>
<body>
<div class="mainContents">
		<div class="contentsName">
			<a id="title">자금계획등록</a>
		</div><!-- /상단 메뉴이름 -->
		<br>
		
		<div class="contents contents-fixed" style="top: 29px; bottom: 34px">
		<!-- 신규등록 Table Start -->
			<table class="table table-bordered table-hover table-left table-striped">
				<colgroup>
					<col style="width: 149px;">
					<col style="width: 600px;">
				</colgroup>
				<tbody>
					<tr id="row-TYPES">
						<th>입출금 구분 <span class="card-Info" data-html="true"
							data-toggle="popover" data-trigger="focus hover"
							data-placement="right" data-original-title="" title=""></span>
						</th>
						<td>
							<div class="radio-inline">
								<label> <input id="optionsRadios1" type="radio"
									checked="" value="option1" name="optionsRadios">출금
								</label>
							</div>
							<div class="radio-inline">
								<label> <input id="optionsRadios2" type="radio"
									value="option2" name="optionsRadios">입금
								</label>
							</div>
						</td>
					</tr>				
					<tr id="row-CardTYPE">
						<th>발생단위</th>
							<td><select class="form-control">
								<option>1개월마다</option>
								<option>2개월마다</option>
								<option>3개월마다</option>
								<option>4개월마다</option>
								<option>5개월마다</option>
								<option>6개월마다</option>
								<option>7개월마다</option>
								<option>8개월마다</option>
								<option>9개월마다</option>
								<option>10개월마다</option>
								<option>11개월마다</option>
								<option>12개월마다</option>					
						</select></td>
					</tr>
					<tr id="row-firstStart">
						<th>최초 발생날짜</th>
						<td><select id="yy" onfocus="nextfield ='mm';" name="yy">
								<option value="2017">2017</option>
								<option value="2016" selected="selected">2016</option>
								<option value="2015">2015</option>
								<option value="2014">2014</option>
								<option value="2013">2013</option>
								<option value="2012">2012</option>
						</select> <select id="mm" onfocus="nextfield ='dd';" name="mm">
								<option value="01">1월</option>
								<option value="02">2월</option>
								<option value="03">3월</option>
								<option value="04" selected="selected">4월</option>
								<option value="05">5월</option>
								<option value="06">6월</option>
								<option value="07">7월</option>
								<option value="08">8월</option>
								<option value="09">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
						</select> <input type="text" class="default" id="dd"
							style="width: 20px; background-color: rgb(255, 255, 255);"
							size="5" value="26" maxlength="3" name="dd"></td>
					</tr>
					
					<tr>
					<th>발생기간</th>
					<td>2016년 4월<select id="e_yy" onfocus="nextfield ='e_mm';" name="e_yy">
						<option selected="selected">2016</option>
						<option>2017</option>
						<option>2018</option>
					</select>
					 <select id="e_mm" onfocus="nextfield ='dd';" name="e_mm">
								<option value="01">1월</option>
								<option value="02">2월</option>
								<option value="03">3월</option>
								<option value="04" selected="selected">4월</option>
								<option value="05">5월</option>
								<option value="06">6월</option>
								<option value="07">7월</option>
								<option value="08">8월</option>
								<option value="09">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
						</select>
					</td>
					</tr>		
					
					<tr id="row-deptNum">
						<th>부서코드</th>
						<td><input id="warehouse_id" type="text">
							<button id="warehouse_id_search" class="btn btn-default btn-sm">
								<span class="fa fa-search"></span>
							</button> <input type="text" name="" value="">
					</tr>
					<tr id="row-project">
						<th>프로젝트번호</th>
						<td><input id="project_number" type="text">
							<button id="project_number_search" class="btn btn-default btn-sm">
								<span class="fa fa-search"></span>
							</button> <input type="text" name="" value="">
					</tr>
					<tr id="row-accountNum">
						<th>계좌번호</th>
						<td><input id="account_number" type="text">
							<button id="account_number_search" class="btn btn-default btn-sm">
								<span class="fa fa-search"></span>
							</button> <input type="text" name="" value="">
					</tr>
					<tr id="row-customer">
						<th>계정</th>
						<td><input id="warehouse_id" type="text">
							<button id="warehouse_id_search" class="btn btn-default btn-sm">
								<span class="fa fa-search"></span>
							</button> <input type="text" name="" value="">
					</tr>
					<tr id="row-noteNum">
						<th>거래처</th>
						<td><input id="card_number" type="text">
							<button id="card_number_search" class="btn btn-default btn-sm">
								<span class="fa fa-search"></span>
							</button> <input type="text" name="" value="">
					</tr>
					<tr id="row-money">
						<th>금액</th>
						<td><input class="form-control" type="text" value=""
							placeholder="금액"></td>
					</tr>					
					<tr id="row-Employee">
						<th>비고</th>
						<td><input class="form-control" type="text" value=""></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 메뉴 footar END -->
		<div class="footer footer-fixed" id="footer-Group"
			style="display: block;">
			<div class="wrapper-toolbar">
				<div class="pull-reft"></div>
				<div class="pull-right" id="button-Group">
					<button id="btn-footer-Save" class="btn btn-xs btn-default"
						type="Submit">저장</button>
					<button id="btn-footer-Reset" class="btn btn-xs btn-default"
						type="button" value="reset">리셋</button>
					<button id="btn-footer-Close" class="btn btn-xs btn-default"
						type="button">닫기</button>
				</div>
			</div>
		</div><!-- 메뉴 footar END -->
	</div><!-- 신규등록 END -->

</body>
</html>