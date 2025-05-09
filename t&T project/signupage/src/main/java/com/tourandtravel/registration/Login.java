package com.tourandtravel.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final DriverManager DriverManager = null;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail=request.getParameter("email");
		String upswd=request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=((java.sql.DriverManager) DriverManager).getConnection("jdbc:mysql://localhost:3306/registerpage?useSSl=false","root","amirak07");
			 PreparedStatement pst= con.prepareStatement("select * from users where uemail = ? and upswd = ?");
			 pst.setString(1, uemail);
			pst.setString(2, upswd);
			 
			 ResultSet rs=pst.executeQuery();
			 if(rs.next()) {
				 session.setAttribute("name", rs.getString("uname"));
				 dispatcher=request.getRequestDispatcher("homepage.jsp");
			 }else {
				 request.setAttribute("status", "failed");
				 dispatcher=request.getRequestDispatcher("login&regi.jsp");
			 }
			 dispatcher.forward(request, response);
			 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
