
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
PreparedStatement ps;
int result=0;
//String bid=request.getParameter("bid");

//String rn=request.getParameter("roomname");
try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
			out.println("all ok");
						 
			int bid=Integer.parseInt(request.getParameter("t1"));
			out.println(bid);
			ps=con.prepareStatement("delete from booking1 where bid=? ;");
			ps.setInt(1,bid);
			
			result +=ps.executeUpdate();
			out.println("effected rows"+result);
			response.sendRedirect("bookingconfirmation.jsp");
		}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
