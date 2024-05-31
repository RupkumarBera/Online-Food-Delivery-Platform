<%@ include file = "connect.jsp" %>

<%
	PreparedStatement pst = con.prepareStatement("select * from rupkumar.LOGIN_ADMIN where useid=? and password=? ");
	pst.setString(1,request.getParameter("mob"));
	pst.setString(2,request.getParameter("pass"));

	ResultSet rs = pst.executeQuery();
	if(rs.next())
		response.sendRedirect("Admin_home.jsp");
	else{
	

%>
<center><font color="red"><p>Invalid userid or Password</p></font>
		<%@ include file = "admin_logIn2.html" %>
<%

	}
	con.close();
%>
