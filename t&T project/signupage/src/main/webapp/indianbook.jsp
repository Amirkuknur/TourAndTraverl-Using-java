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
<title>Indian Book</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="look.css">
</head>
<body>
<form name="indianbook" action="indianbook" method="post">

<h2>Indianbook Destination Receive</h2>

<div class="div2"><br>
    <table>
    
    <thead>
        <tr>
        	<th>ID</th>
           <th>Name</th>
           <th>Email</th>
           <th>Destination</th>
           <th>Room</th>
           <th>Adults</th>
           <th>Children</th> 
          
        </tr>
    </thead>
    <tbody>
         <%
         
         Connection cn=null;
         Statement st=null;
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/indianbook","root","amirak07");
         st=cn.createStatement();
         
         
         String sql = "select * from Bookings";
         ResultSet rs=st.executeQuery(sql);
         
         
         while(rs.next())
         {
         %>
      <tr>
            <td><%=rs.getString("id") %></td>
           <td><%=rs.getString("name") %></td>
           <td><%=rs.getString("email") %></td>
           
           <td><%=rs.getString("destination") %></td>
           <td><%=rs.getString("rooms") %></td>
           <td><%=rs.getString("adults") %></td>
           <td><%=rs.getString("children") %></td>
       
        </tr>
          <%} %>
    </tbody>
    </table>
</div>
       </form>
       
</body>
</html>