<%@ include file="connect.jsp" %>
<%@ include file="admin_menu.jsp" %>
<%!
    int fid=0;
%>
<%
    PreparedStatement pst=con.prepareStatement("select max(id) from rupkumar.FOOD_DETAILS");
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    fid=rs.getInt(1);
   fid=fid+1;
   con.close();
%>
<form action=login22.jsp method=post>
    <center>
<table>
     <tr>    
         <td>Food id </td>
         <td><input type=text name=fid value=<%=fid%> readonly>
          </td>
     </tr>
     <tr>
        <td>Food NAME</td>
        <td><input type="text" placeholder="Enter your food" name="fnm" required></td>
    </tr>
    
    <tr>
        <td>type</td>
        <td><input type="text" placeholder="type" name="ty"></td>
    </tr>
    <tr>
        <td>price</td>
        <td><input type="text" placeholder="price" name="pri"></textarea></td>
    </tr>

</table>
<a><input type="submit" value="Insert"</a><br>
    </center>
</form>
  




