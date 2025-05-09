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
<title>Register</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="look.css">
</head>
<body>
<form name="Registerdetails" action="Registerdetails" method="post">

<h2>Registration Details</h2>

<div class="div2"><br>
    <table>
    
    <thead>
        <tr>
           <th>Name</th>
           <th>Email</th>
           <th>Password</th>
        </tr>
    </thead>
    <tbody>
         <%
         
         Connection cn=null;
         Statement st=null;
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registerpage","root","amirak07");
         st=cn.createStatement();
         
         
         String sql = "select * from users";
         ResultSet rs=st.executeQuery(sql);
         
         
         while(rs.next())
         {
         %>
      <tr>
            <td><%=rs.getString("uname") %></td>
           <td><%=rs.getString("uemail") %></td>
           <td><%=rs.getString("upswd") %></td>
        </tr>
          <%} %>
    </tbody>
    </table>
</div>
       </form>
       
</body>
</html>