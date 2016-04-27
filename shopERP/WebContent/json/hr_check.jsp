<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
<%
	String basic_id = request.getParameter("b_id");
	String basic_type = request.getParameter("b_type");
	
	String db_url = "jdbc:oracle:thin:@localhost:1521:XE";
	String id = "shopERP";
	String pw = "1234";
	
	String sql="";
	System.out.println(basic_id);
	System.out.println(basic_type);
	if(basic_type.equals("dept")){
		sql = "select count(*) from department where dept_id=?";
	}
	else if(basic_type.equals("position")){
		sql = "select count(*) from positions where position_id=?"; 
	}
	else{
		sql = "select count(*) from duty where duty_id=?"; 
	}

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	int count=0;
	try {     
		    Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(db_url, id, pw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, basic_id);
			rs = pstmt.executeQuery();
			while((rs.next())){
				System.out.println(count);
				count = rs.getInt("COUNT(*)");
			}
			System.out.println(count);	
	    }		
	catch (Exception e) {     
	    e.printStackTrace();  
	}
	String str=null;
	
	if(count>0){
		System.out.println("중복");
		out.print(str);
	}
	else{
		str="yes";
		System.out.println("안중복");
		out.print(str);
	}
%>