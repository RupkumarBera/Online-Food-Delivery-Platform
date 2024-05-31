<%@page import="java.sql.*" %>

<%
   String fid=request.getParameter("fid");
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
   PreparedStatement pst=con.prepareStatement("select * from rupkumar.FOOD_DETAILS where id=?");
   pst.setString(1,fid);
   ResultSet rs=pst.executeQuery();
   if(rs.next())
   {
%>
<center>
<form action=update2.jsp method=post>
<table border=0>
   <tr>
      <td>Food Id</td>
      <td><input type=number  name=fid value="<%=rs.getString(1)%>" readonly></td>
 </tr>
  <tr>
       <td>Food Name</td>
       <td><input type=text name=food value="<%=rs.getString(2)%>" readonly></td>
  </tr>
  <tr>
	<td>Type</td>
	<td><input type=text name=ty value="<%=rs.getString(3)%>"></td>
   </tr>
  <tr>
     <td>Price</td>
    <td><input type=text name=pri value="<%=rs.getString(4)%>"></td></tr>
   
   </tr>
   <tr>
   <td colspan=2 align=center><input type=submit value=Update></td></tr>
  </table>
</center>
</form>
<%
   }
  else
    out.println("<h1>Invalid Food Name </h1>");
 con.close();
%>