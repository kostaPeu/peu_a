<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String jsonArray = (String)request.getAttribute("jsonArray");
	//JSONArray jsonArray = (JSONArray)request.getAttribute("jsonArray");
	System.out.println(jsonArray);
	out.println(jsonArray);
%>
