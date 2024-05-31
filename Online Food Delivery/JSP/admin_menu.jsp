<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Webpage</title>
  <style>
    body {
      background-image: url('f.jpg'); /* Add the path to your background image */
            background-size:cover;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    #navbar {
      background-color: #333;
      overflow: hidden;
    }

    #navbar a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    #navbar a:hover {
      background-color: #ddd;
      color: black;
    }

    #home {
      background-color: #4CAF50;
    }

    #insert {
      background-color: #2196F3;
    }

    #update {
      background-color: #f44336;
    }

    #delete {
      background-color: #808080;
    }
    #Logout {
      background-color: #a83799;
    }

    #content {
      padding: 16px;
    }
  </style>
</head>
<body>

<div id="navbar">
  <a id="home" href="Admin_home.jsp" onclick="showPage('Admin_home.jsp')">Home</a>
  <a id="insert" href="login21.jsp" onclick="showPage('login21.jsp')">Insert Food</a>
  <a id="update" href="Update.html" onclick="showPage('update.html')">Update Food</a>
  <a id="delete" href="deletefood.html" onclick="showPage('deletefood.html')">Delete Food</a>
  <a id="Logout" href="login.html" onclick="showPage('login.html')">Admin Logout</a>
</div>

<div id="content">
  
</div>

<script>
  function showPage(page) {
    // You can use window.location.href or other methods to navigate to the JSP page.
    alert('Opening ' + page);
  }
</script>

</body>
</html>
