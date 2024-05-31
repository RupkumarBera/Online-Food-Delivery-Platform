<%@ page import = "java.sql.*" %>


<%
    String mn= request.getParameter("mn");
    String nm = request.getParameter("nm");    
    String pass = request.getParameter("pass");
    String addrs = request.getParameter("addrs");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement pst = con.prepareStatement("insert into rupkumar.FOOD_NEWREG values(?,?,?,?)");
    pst.setString(1,nm);
    pst.setString(2,mn);
    pst.setString(3,pass);
    pst.setString(4,addrs);
    int t = pst.executeUpdate();
    if(t>0)
        out.println("<h1><center> Congratulations! Your account created successfully.</h1>");
    %>
    <body bgcolor="pink">
        <center><br><br>
                Go to: <button onclick="window.location.href='login.html'">Home</button>
    </body>

    <%

    con.close();

%>
