package hotelmanagement;

import java.io.IOException;
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
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends GenericServlet {
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
		      String  email=request.getParameter("email");
		      String cardholder =request.getParameter("cardholder");
		      String cardnumber  = request.getParameter("cardnumber");
		      String expirydata=request.getParameter("expirydata");
		      int   cvc  = Integer.parseInt(request.getParameter("cvc"));
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
		      ps = con.prepareStatement("insert into payment values(?,?,?,?,?,?);");
		      ps.setString(1,username);
		      ps.setString(2,email);
		      ps.setString(3,cardholder);
		      ps.setString(4,cardnumber);
		      ps.setString(5,expirydata);
		      ps.setInt(6,cvc);
		      result +=ps.executeUpdate();
		 out.println("payed:"+result);
		     RequestDispatcher dis= request.getRequestDispatcher("paymentconfirmation.html");
		     dis.forward(request,response);
		   }
	    catch(Exception e)
	    		{e.printStackTrace();
	    		}
	    		}
}

