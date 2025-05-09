<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PAYMENT</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="look.css">
</head>
<body>
<form name="messagecome" action="messagecome" method="post">

<h2>Receive Payment</h2>

<div class="div2"><br>
    <table>
    
    <thead>
        <tr>
           <th>Destination</th>
           <th>Amount</th>
           <th>Payment Type</th>
           
           
           
           
          
        </tr>
    </thead>
    <tbody>
         <%
         
         Connection cn=null;
         Statement st=null;
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/payinter","root","amirak07");
         st=cn.createStatement();
         
         
         String sql = "select * from amount";
         ResultSet rs=st.executeQuery(sql);
         
         
         while(rs.next())
         {
         %>
      <tr>
            <td><%=rs.getString("destination") %></td>
           <td><%=rs.getString("amount") %></td>
           <td><%=rs.getString("payment_type") %></td>
           
          
       
        </tr>
          <%} %>
    </tbody>
    </table>
</div>
       </form>
       
</body>
</html>