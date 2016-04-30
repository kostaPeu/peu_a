<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="paginate">
    <a href="noticeListAction.gw?choiceP=${param.firstPageNo}" class="first">처음 페이지</a>
    <a href="noticeListAction.gw?choiceP=${param.prevPageNo}" class="prev">이전 페이지</a>
    <span>
        <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
            <c:choose>
                <c:when test="${i eq param.pageNo}"><a href="noticeListAction.gw?choiceP=${i}" class="choice">${i}</a></c:when>
                <c:otherwise><a href="noticeListAction.gw?choiceP=${i}">${i}</a></c:otherwise>
            </c:choose>
        </c:forEach>
    </span>
    <a href="noticeListAction.gw?choiceP=${param.nextPageNo}" class="next">다음 페이지</a>
    <a href="noticeListAction.gw?choiceP=${param.finalPageNo}" class="last">마지막 페이지</a>
</div>