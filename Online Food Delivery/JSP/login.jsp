<%@ include file = "connect.jsp" %>
<%
	PreparedStatement pst = con.prepareStatement("select * from rupkumar.FOOD_NEWREG where MOBILE_NO =? and PASSWORD =? ");
	pst.setString(1,request.getParameter("mn"));
	pst.setString(2,request.getParameter("pass"));
	session.setAttribute("mo",request.getParameter("mn"));
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("nm",rs.getString(1));
		session.setAttribute("mn",rs.getString(2));
	   response.sendRedirect("user_home.jsp");
	   }
	  else{
	 %>
	 <center><font color=red><h3>Invalid userid or password</h3></font>
	  <%@include file="login.html" %>
	 <%
	   }
	   con.close();
   %>