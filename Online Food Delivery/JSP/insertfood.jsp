<html>
  <head>
    <header>Insert Food</header>
    <style>
        body {
background-image: url('f6.jpg');
background-size: cover; 
background-repeat:no-repeat;
}
    </style>
    <style>
      .oval-button {
        width: 120px;
        height: 60px;
        border-radius: 30px; /* Half of the height for a perfect circle */
        background-color: #4c9baf; /* Change the color to your preference */
        /* color: rgb(179, 31, 31); */
        font-size: 16px;
        border: none;
        cursor: pointer;
        align-items: center;
        
      }
      .oval-button:hover{
        background-color: #ffffffe5;
        color:black;
  
      }
    </style>
</head>
  <body>
    <%@page import="java.sql.*" %>
    <%
    
    String food=request.getParameter("food");
    
    String ty=request.getParameter("ty");
    String pri=request.getParameter("pri");
    

    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement pst=con.prepareStatement("insert into rupkumar.FOOD_DETAILS values(?,?,?)");
    
    
    pst.setString(1,food);
    pst.setString(2,ty);
    pst.setString(3,pri);
    

    int t=pst.executeUpdate();
    if(t>0)
        out.print(" <center><h2>Insert Successfully</h2></center>");
        
    con.close();
    %>
   <center><button class="oval-button"><center><a href="insertfood.html" class="create"><h4>Back</h4></a><br><br></center></button> </center> 
  </body>
</html>