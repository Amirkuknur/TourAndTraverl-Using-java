package com.tourandtravel.registration;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registrationservelet
 */
@WebServlet("/regiform")
public class Registrationservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Connection DriverManager = null;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("name");
		String uemail=request.getParameter("Email");
		String upswd=request.getParameter("Password");
		RequestDispatcher dispatcher=null;
		Connection con = null;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=((java.sql.DriverManager) DriverManager).getConnection("jdbc:mysql://localhost:3306/registerpage?useSSl=false","root","amirak07");
			PreparedStatement pst= con.prepareStatement("insert into users(uname,uemail,upswd)values(?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, upswd);
			
			int rowCount= pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("login&regi.jsp");
			if(rowCount > 0) {
				
				 request.setAttribute("status", "Success");
				 
			}else {
				
				 request.setAttribute("status", "Failed!");
			}
			dispatcher.forward(request, response); 
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
