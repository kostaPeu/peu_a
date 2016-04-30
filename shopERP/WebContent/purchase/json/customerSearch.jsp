<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String json = (String)request.getAttribute("json");
	out.println(json);
%>