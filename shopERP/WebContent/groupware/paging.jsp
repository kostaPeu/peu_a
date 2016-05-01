<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="pager">
	<li class="previous"><a href="noticeListAction.gw?choiceP=${param.firstPageNo}">처음</a></li>
	<li>
		<c:forEach var="i" begin="${param.startPageNo}"
			end="${param.endPageNo}" step="1">
			<c:choose>
				<c:when test="${i eq param.pageNo}">
					<a href="noticeListAction.gw?choiceP=${i}" class="choice">${i}</a>
				</c:when>
				<c:otherwise>
					<a href="noticeListAction.gw?choiceP=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</li>
	<li class="next"><a href="noticeListAction.gw?choiceP=${param.finalPageNo}">끝</a></li>
</ul>
