<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String jsonArray = (String)request.getAttribute("jsonArray");
	//JSONArray jsonArray = (JSONArray)request.getAttribute("jsonArray");
	//String b = new String(jsonArray.getBytes("UTF-8"),"UTF-8");
	String b = URLDecoder.decode(jsonArray, "UTF-8");
	System.out.println(b);
	out.println(jsonArray);
%>
