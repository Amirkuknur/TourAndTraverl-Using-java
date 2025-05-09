<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style></style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/admin_veiw_payments.css" type="text/css">
<style></style>
</head>
<body>
<form name="admin_veiw_payments" action="admin_veiw_payments" method="post">
<label class="title">Manage Payments</label><br>


<div class="div2"><br>
    <table>
    <input type="text" placeholder="search" class="searchbtn"><br>
    <thead>
        <tr>
           <th></th>
           <th>product id</th>
           
           <th>product name</th>
           
           <th>quantity</th>
           <th>gross amount</th>
           <th>net amount</th>
            <th>total price</th>
           <th>payment mode</th>
           <th>user id</th>
           <th>username</th>
           
          
        </tr>
    </thead>
    <tbody>
    
         <%
    
    Connection cn=null;
    Statement st=null;
    Class.forName("com.mysql.cj.jdbc.Driver");

    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/indianbook","root","amirak07");
    st=cn.createStatement();
    
    
    String sql = "select * from Bookings";
    ResultSet rs=st.executeQuery(sql);         //data fetch/show in the table from the form
    
    
    while(rs.next())
    {
    %>
  
    
        <tr>
           <td><%=rs.getString("payment_id") %></td>
           <td><%=rs.getString("product_id") %></td>
          
           <td><%=rs.getString("product_name") %></td>
           <td><%=rs.getString("quantity") %></td>
            <td><%=rs.getString("gross_amount") %></td>
             <td><%=rs.getString("net_amount") %></td>
             <td><%=rs.getString("total_price") %></td>
              <td><%=rs.getString("payment_mode") %></td>
               <td><%=rs.getString("user_id") %></td>
                <td><%=rs.getString("user_name") %></td>
           
          
        </tr>
         <%} %>
    </tbody>
    </table>
</div>
</div>


</div>
</div>
</form>
</body>
</html>