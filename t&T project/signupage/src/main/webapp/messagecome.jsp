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
<title>feedback</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="look.css">
</head>
<body>
<form name="messagecome" action="messagecome" method="post">

<h2>Feedback Received</h2>

<div class="div2"><br>
    <table>
    
    <thead>
        <tr>
           <th>Name</th>
           <th>Email</th>
           <th>Rating</th>
           <th>Comment</th>
           
           
           
          
        </tr>
    </thead>
    <tbody>
         <%
         
         Connection cn=null;
         Statement st=null;
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback_db","root","amirak07");
         st=cn.createStatement();
         
         
         String sql = "select * from feedback";
         ResultSet rs=st.executeQuery(sql);
         
         
         while(rs.next())
         {
         %>
      <tr>
            <td><%=rs.getString("name") %></td>
           <td><%=rs.getString("email") %></td>
           <td><%=rs.getString("rating") %></td>
           
           <td><%=rs.getString("comments") %></td>
       
        </tr>
          <%} %>
    </tbody>
    </table>
</div>
       </form>
       
</body>
</html>