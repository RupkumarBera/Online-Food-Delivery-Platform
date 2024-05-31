<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
     body {
            background-image: url("f9.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0; 
            height: 100vh;
        }

    .welcome{
        font-size:100px;
        color:rgb(255, 0, 170);
        
    }
    .welcome:hover{
        color:rgb(98, 244, 30)
    }
    .oval-button {
      width: 300px;
      height: 90px;
      border-radius: 30px; 
      background-color: #4152b1;
      color: white;
      font-size: 27px;
      font-style:normal;
      border: none;
      cursor: pointer;
    }
    .oval-button:hover{
        background-color:rgb(149, 161, 173);

    }
  </style>
</head>
<body>
    <center>
    <h1  class="welcome">Welcome</h1>

    <button class="oval-button"> <a href="Food2.html" ><b>Food</b></a></button><br><br>
    <button class="oval-button"><a href="Food_Order.jsp" ><b>Order</b></a></button><br><br>
    <button class="oval-button"><a href="history.jsp" ><b>Histroy</b></a></button>
</center>


</body>
</html>