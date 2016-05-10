<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<script src="/shopERP/accounting/js/ac.js" type="text/javascript"></script>

</head>
<body>

	<h2 class="page_title">신용카드등록</h2>

	<div class="mainContents">
	
	<div class="container-fluid">
		<div class="table-responsive">
			<table class="table table-bordered table-hover table-striped"
				id="Card">
				<thead id="cardList">
					<tr class="mainTable">
						<th><input type="checkbox" disabled="disabled"></th>
						<th>카드번호</th>
						<th>카드명</th>
						<th>계좌번호</th>
						<th>구분</th>
						<th>사원명</th>
						<th>계정명</th>
						<th>사용여부</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody id="cardInfos">
					<c:forEach var="c" items="${list}">
						<tr class="mainTable">
							<td><input type="checkbox" class="upSelect check_id"
								name="id_box"></td>
							<td>${c.card_number }</td>
							<td>${c.card_name }</td>
							<td>${c.account_number }</td>
							<td>${c.type }</td>
							<td>${c.emp_id }</td>
							<td>${c.use_detail }</td>
							<td>${c.use }</td>
							<td>${c.remarks }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 하단 버튼  -->
		<div class="buttongroup">
			<button type="button" class="btn btn-default" data-toggle="modal"
				data-target="#exampleModal" data-whatever="@mdo">신규등록</button>
			<button type="button" class="btn btn-default" data-toggle="modal"
				data-target="#exampleModal" data-whatever="@fat">수정</button>
			<input type="button" id="newBtn" class="btn btn-default" value="삭제">
		</div>
	</div>


		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">
							<strong>신용카드 신규등록</strong>
						</h4>
					</div>
			<form action="insertCard.ac" method="post">		
					<div class="modal-body">
						<div class="form-group">
							<label for="recipient-name" class="control-label">구분</label>
							<div class="radio-inline">
								<label>
									<input id="recipient-name" type="radio"	checked="" value="yes" name="type">회사
								</label>
							</div>
							<div class="radio-inline">
								<label>
									<input id="recipient-name" type="radio"	value="no" name="type">사원
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">카드번호</label>
							<input class="form-control" type="text" placeholder="카드번호" name="card_number">
						</div>

						<div class="form-group">
							<label for="message-text" class="control-label">카드명</label>
							<input class="form-control" type="text" placeholder="카드명"	name="card_name">
						</div>
						
						<div class="form-group">
							<label for="message-text" class="control-label">계좌번호</label>
							<a data-toggle="modal" href="#myModal2"><button type="button" class="btn btn-default btn-sm" id="account_numbers">
								<span class="fa fa-search"></span>
							</button></a>
							<input class="form-control" type="text" placeholder="계좌번호" name="account_number" id="account_number">
						</div>
						
						
						<div class="form-group">
							<label for="message-text" class="control-label">사원번호</label>
							<button type="button" class="btn btn-default btn-sm" id="emp_ids">
								<span class="fa fa-search"></span>
							</button>
							<input class="form-control" type="text" placeholder="사원번호" name="emp_id">
						</div>
						
						
						<div class="form-group">
							<label for="message-text" class="control-label">계정명</label><input
								class="form-control" type="text" placeholder="계정명"	name="use_detail">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">사용여부</label>
							<div class="radio-inline">
								<label> <input id="optionsRadios-1" type="radio" checked="" value="yes" name="use">사용
								</label>
							</div>
							<div class="radio-inline">
								<label> <input id="optionsRadios2" type="radio"	value="no" name="use">정지
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">비고</label><input
								class="form-control" type="text" placeholder="비고"
								name="remarks">
						</div>
						<div class="modal-footer">
							<input type="submit" class="btn btn-default" value="저장">
							<input type="reset" class="btn btn-default" value="다시작성">
							<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
						</div>
					</div>
				</form>	
			</div>
		</div>	
	</div>
</div>
 <!-- <div class="modal" id="myModal2" aria-hidden="true" style="display: none; z-index: 1060;">
    	<div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title">Modal 2</h4>
            </div><div class="container"></div>
            <div class="modal-body">
            wqeqwewqeqwe
            </div>
           </div>
          </div>	 -->
	
	
	<!--  <div id="warehouseSearch_modal" class="modal fade" role="dialog">
<!-- 계좌번호 검색 -->
<div class="modal" id="myModal2" aria-hidden="true" style="display: none; z-index: 1060;">
 <div class="modal-dialog modal-lg">      
    <div class="modal-content">
		<div class="modal-header">
			   <button type="button" class="close" data-dismiss="modal">&times;</button>
			   <h4 class="modal-title"><strong>목록 검색</strong></h4>	
		</div>
			<div class="modal-body">
				<div class="col-sm-2">
					<select >
						<option id="">계좌번호</option>	
						<option id="">사원번호</option>	
						<option id="">카드번호</option>	
						<option id="">ㅁㄴㅇㅁ</option>	
					</select>
				</div>	
				<div class="col-sm-8">
					<input type="text" class="form-control" name="account_number" id="search_account_number">
				</div>
						
				<div class="col-sm-2">
						<button type="button" class="btn btn-info btn-sm" id="warehouseID"><span class="fa fa-search"></span></button>
				</div>
				<br><br><br>
				<table id="m_searchTable" class="table table-bordered table-hover">
				
				</table>
				<div id="ustBtnArea">
					<input type="button" class="btn btn-default center useBtn" value="사용" data-dismiss="modal">
				</div>
				<div class="modal-footer">
      				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
     			 </div>
			</div>
		</div>
	</div>
</div>

</body>
</html>