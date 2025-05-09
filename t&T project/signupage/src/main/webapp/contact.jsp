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
<title>contact</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="look.css">
</head>
<body>
<form name="contact" action="contact" method="post">

<h2>Contact Receive</h2>

<div class="div2"><br>
    <table>
    
    <thead>
        <tr>
        	<th>ID</th>
           <th>Name</th>
           <th>Email</th>
           <th>Message</th>
           
           
           
           
          
        </tr>
    </thead>
    <tbody>
         <%
         
         Connection cn=null;
         Statement st=null;
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_db","root","amirak07");
         st=cn.createStatement();
         
         
         String sql = "select * from contact";
         ResultSet rs=st.executeQuery(sql);
         
         
         while(rs.next())
         {
         %>
      <tr>
            <td><%=rs.getString("id") %></td>
           <td><%=rs.getString("name") %></td>
           <td><%=rs.getString("email") %></td>
           
           <td><%=rs.getString("message") %></td>
       
        </tr>
          <%} %>
    </tbody>
    </table>
</div>
       </form>
       
</body>
</html>