package hotelmanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import java.sql.*;
/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends GenericServlet {
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
		      String userid = request.getParameter("userid");
		      
		      String fname=request.getParameter("fname");
		      String lastmane=request.getParameter("lastmane");
		      String email=request.getParameter("email");
		      String password=request.getParameter("password");
		     
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
		     
		      ps = con.prepareStatement("insert into userss values(?,?,?,?,?);");
		      ps.setString(1, userid);
		      ps.setString(2,fname);
		      ps.setString(3,lastmane);
		      ps.setString(4,email);
		      ps.setString(5,password);
		      
		      
		      result +=ps.executeUpdate();
		 out.println("registered:"+result);
		     RequestDispatcher dis= request.getRequestDispatcher("loginn.jsp");
		     dis.forward(request,response);
		   }
	    catch(Exception e)
	    		{e.printStackTrace();
	    		}
	    		}






}
