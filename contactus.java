package hotelmanagement;

import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class contactus
 */
@WebServlet("/contactus")
public class contactus extends GenericServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
	      PrintWriter out = response.getWriter();
	   Connection con;
	   PreparedStatement ps;
	   ResultSet rs;
	   int result=0;
	    try
	   {
	      Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(ClassNotFoundException e)
	    { 
	      e.printStackTrace();
	    }
	    try
		   {
	      String username = request.getParameter("username");
	      String email =request.getParameter("email");
		     int phoneno= Integer.parseInt(request.getParameter("phoneno"));
	      String  message =request.getParameter("message");
	      
	     
	      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
	     
	      ps = con.prepareStatement("insert into contactus values(?,?,?,?);");
	      ps.setString(1, username);
	      ps.setString(2,email);
	      ps.setInt(3,phoneno);
	      ps.setString(4,message);
	
	      
	      
	      result +=ps.executeUpdate();
	 out.println("message:"+result);
	     RequestDispatcher dis= request.getRequestDispatcher("home.jsp");
	     dis.forward(request,response);
	   }
catch(Exception e)
		{e.printStackTrace();
		}
		}

	}


