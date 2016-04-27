<%@page import="java.util.ArrayList"%>
<%@page import="shopERP.basic.model.Customer"%>
<%@page import="java.util.List"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     
<%
	List<Customer> list = null;
	String customer_id = request.getParameter("customerIDcheck");
	String db_url = "jdbc:oracle:thin:@localhost:1521:XE";  
	String id = "shopERP";
	String pw = "1234";
	String sql = "select * from customer where customer_id=?"; 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	String getCustomer_id = "";
	String getcustomer_name = "";
	String getrepre_name = "";
	String getphone_number = "";
	String getcustomer_address = "";
	String getcopy_bankbook = "";
	String getbankbook_check = "";
	String getcustomer_email = "";
	String getcustomer_fax = "";
	String getcheckman = "";
	try {     
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		    System.out.println("class.forName 성공");
			conn = DriverManager.getConnection(db_url, id, pw);
			System.out.println("conn 성공");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, customer_id);
			rs = pstmt.executeQuery();
			while((rs.next())){
				getCustomer_id = rs.getString("customer_id");
				getcustomer_name = rs.getString("customer_name");
				getrepre_name = rs.getString("repre_name");
				getphone_number = rs.getString("phone_number");
				getcustomer_address = rs.getString("customer_address");
				getcopy_bankbook = rs.getString("copy_bankbook");
				getbankbook_check = rs.getString("bankbook_check");
				getcustomer_email = rs.getString("customer_email");
				getcustomer_fax = rs.getString("customer_fax");
				getcheckman = rs.getString("checkman");
			}
	    }		
	catch (Exception e) {     
	    e.printStackTrace();  
	    }
	if(list == null){
		list = new ArrayList<Customer>();
		list.add(new Customer(getCustomer_id, getcustomer_name, getrepre_name,getphone_number,getcustomer_address,
				getcopy_bankbook,getbankbook_check,getcustomer_email,getcustomer_fax,getcheckman));
	}	
	if(list != null && list.size() != 0){
		String json = JSONArray.fromObject(list).toString();
		out.print(json);
	}
%>