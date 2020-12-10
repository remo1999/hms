package hotelmanagement;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class roomdetails
 */
@WebServlet("/roomdetails")
public class roomdetails extends GenericServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String checkin = request.getParameter("t1");
		// out.println(checkin);
		String checkout = request.getParameter("t2");
		// out.println(checkout);
		int noofroom1 = Integer.parseInt(request.getParameter("t3"));
		// out.println(noofrooms);
		int noofadult = Integer.parseInt(request.getParameter("t4"));
		// out.println(noofadult);
		int noofchildren = Integer.parseInt(request.getParameter("t5"));
		// out.println(noofchildren);
		String roomname = request.getParameter("t6");
		// out.println(roomname);
		Connection con;
		PreparedStatement ps, ps1, ps2;
		ResultSet rs;
		

		try {
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/s41", "root", "root");
			ps = con.prepareStatement("select * from category where catname=?");
			ps.setString(1, roomname);
			rs = ps.executeQuery();
			while (rs.next()) {
				int noofroom = rs.getInt("noofrooms");
				out.println(noofroom);
				if (noofroom >= noofroom1) {
					out.println("Here");
					HttpServletRequest httpRequest = (HttpServletRequest) request;
					HttpSession session = httpRequest.getSession();
					String id = (String)session.getAttribute("userid");

        ps1 = con.prepareStatement("insert into booking1(userid,checkin,checkout,noofrooms,noofadult,noofchildren,roomname) values(?,?,?,?,?,?,?);");
					ps1.setString(1, id);
					ps1.setString(2, checkin);
					ps1.setString(3, checkout);
					ps1.setInt(4, noofroom1);
					ps1.setInt(5, noofadult);
					ps1.setInt(6, noofchildren);
					ps1.setString(7, roomname);
					out.println("Here1");
                  int s= ps1.executeUpdate();
                  
					 out.println("Entered into the database");
					if(s>0){
						
						out.println("Here3");
					ps2 = con.prepareStatement("update category  set noofrooms=noofrooms-? where catname=?");

					ps2.setInt(1, noofroom1);
					ps2.setString(2, roomname);

					ps2.executeUpdate();

					RequestDispatcher dis= request.getRequestDispatcher("bookingconfirmation.jsp");
				     dis.forward(request,response);
				}
			

				}

				else {
					out.println("Rooms you have requested are unavailabe at the moment");
					// response.sendRedirect("bookingdetail.html");
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
