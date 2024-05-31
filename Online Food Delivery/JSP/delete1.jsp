<%@page import="java.sql.*" %>
<%@include file = "admin_menu.jsp"%>
<%
    String fid=request.getParameter("fid");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","manager");
    PreparedStatement pst=con.prepareStatement("delete from rupkumar.FOOD_DETAILS where id=?");
    pst.setString(1,fid);
    int t=pst.executeUpdate();
    if(t>0)
     out.println("<center><h3>Deleted successfully</h3></center>");
     else{
     %>
        <center><font color="red"><p>Invalid Food</p></font>
		<!-- <%@ include file = "deletefood.html" %> -->
<%
        }
        con.close();
%>
