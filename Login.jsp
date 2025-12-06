<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%@taglib uri="/struts-tags" prefix="s" %> -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- jQuery script and css-->
    <!-- Source: https://www.geeksforgeeks.org/jquery/how-to-generate-a-simple-popup-using-jquery/ -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="css/Login.css">
    <title>ArtCraft - Login Page</title>
</head>
<body>
    <div class="logo_container">
        
    </div>
    <s:form action="userLogin">
        <label for="username">Username</label>
    </s:form>
</body>
</html>