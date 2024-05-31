
<%@ include file="connect.jsp" %>
<%
 PreparedStatement pst=con.prepareStatement("insert into rupkumar.food_add_request values(?,?)");
 pst.setInt(1,Integer.parseInt(request.getParameter("fid")));
pst.setString(2,(String)session.getAttribute("mn"));

pst.executeUpdate();
out.println("Food request successfully");
con.close();
%>
