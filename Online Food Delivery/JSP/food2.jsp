<!-- <%@page import="java.sql.*"%>
<%
    String food=request.getParameter("food");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement pst=con.prepareStatement("select * from rupkumar.FOOD_DETAILS where FOOD=?");
    pst.setString(1,food);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
    	out.println("<h3>FOOD:"+rs.getString(1));
    	out.println("<br><br>TYPE:"+rs.getString(2));
    	out.println("<br><br>PRICE:"+rs.getString(3));
    	
    }
    else
    {
      out.println("<h3>Invalid Food</h3>");
    }
con.close();
%> -->
<%@ include file="student_menu.jsp"%>
<center>
<form action=search_result.jsp  method=post>
<pre>
<input type=text name=bname> <input type=submit value="search by book Name">
</pre>
</form>