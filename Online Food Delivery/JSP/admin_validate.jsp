<%@ include file="connect.jsp" %>
<%
   PreparedStatement pst=con.prepareStatement("select * from rupkumar.LOGIN_ADMIN where useid=? and password=?");
   pst.setString(1,request.getParameter("uid"));
   pst.setString(2,request.getParameter("pass"));
  ResultSet rs=pst.executeQuery();
   if(rs.next())
    response.sendRedirect("Admin_home.jsp");
   else{
  %>
  <center><font color=red><h3>Invalid userid or password</h3></font>
   <%@include file="admin_login.html" %>
  <%
    }
    con.close();
%>