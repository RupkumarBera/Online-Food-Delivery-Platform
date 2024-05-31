<%@ include file="user_menu.jsp"%>
<%@ include file="connect.jsp" %>
<%
String type=request.getParameter("type");
PreparedStatement pst=con.prepareStatement("select * from rupkumar.FOOD_DETAILS where type like '"+type+"%'");
ResultSet rs=pst.executeQuery();
%>
<center>
<table border=2>
  <tr>
	<th>FOOD NAME</th>
	<th> type</th>
	<th>Price</th>
         <th></th>
    </tr>
<%
    while(rs.next())
    {
      int f=0;
       int fid=rs.getInt(1);
       PreparedStatement pst1=con.prepareStatement("select * from rupkumar.food_add_request where ID=? AND MOBILE_NO=? ");
      
       pst1.setInt(1,fid);
       pst1.setString(2,(String)session.getAttribute("mn"));
       ResultSet rs1=pst1.executeQuery();
       if(rs1.next())
          f=1;
%>
<tr>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
  <td>
<%
if(f==0)
{
%>
<form action="request.jsp" method=post><input type=hidden name=fid value=<%=fid%>><input type=submit value=Request></form>
<%
}
else{
%>
Already requested.
<%
}
%>
</center>
</td>
    </tr>
<%
   }
   con.close();
%>