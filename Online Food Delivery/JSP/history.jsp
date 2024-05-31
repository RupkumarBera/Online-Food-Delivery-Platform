<%@ include file="connect.jsp" %>
<h1 align="center">WELCOME TO FOOD FACTORY</h1><br><br>
<h2 align="center">History</h2>
<%! int p = 0; %>
<%
try{
String type=request.getParameter("type");
Statement pst=con.createStatement();
String s = (String)session.getAttribute("mo");
ResultSet rs=pst.executeQuery("select * from rupkumar.FOOD_DETAILS,rupkumar.FOOD_ADD_REQUEST where rupkumar.FOOD_DETAILS.ID = rupkumar.FOOD_ADD_REQUEST.ID and MOBILE_NO = '"+s+"'");
    p = 0;
%>
<center>
       
    <table border="4" cellspacing="0">
        <tr>
            <th>
                FOOD ID
            </th>
            <th>
                FOOD Name          
            </th>
            <th>
                FOOD Type          
            </th>
            <th>
                FOOD Price
            </th>
        </tr>
<%
while(rs.next()){ p = p + Integer.parseInt(rs.getString(4));
%>

    
        <tr>
            <td align="center">
                <%=rs.getInt(1)%>
            </td>
            <td align="center">
               <%=rs.getString(2)%>
            </td>
            <td align="center">
                <%=rs.getString(3)%>
            </td>
            <td align="center">
                <%=rs.getString(4)%>
             </td>
        </tr> 

<%
}
%>
</table>
<%
con.close();
}
catch(Exception e){
    out.println(e);
}
%>