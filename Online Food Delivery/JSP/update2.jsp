<%@page import="java.sql.*" %>
<%@include file = "admin_menu.jsp"%>
<%
  String fid = request.getParameter("fid");
   String food=request.getParameter("food");
   String ty=request.getParameter("ty");
   String pri=request.getParameter("pri");
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
   PreparedStatement pst=con.prepareStatement("update rupkumar.FOOD_DETAILS set food=?,type=?,price=? where id=?");
   pst.setString(4,fid);
  pst.setString(1,food);
  pst.setString(2,ty);
  pst.setString(3,pri);
  pst.executeUpdate();
  out.println("<center><h1>Update successfully</h1></center>");
  con.close();
%>