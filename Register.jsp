<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- jQuery script and css-->
    <!-- Source: https://www.geeksforgeeks.org/jquery/how-to-generate-a-simple-popup-using-jquery/ -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="css/Register.css">
    <title>Document</title>
</head>
<body>
    <div class="registerFrm_container">
        <div class="registerFrm_title_container">
            <h2>Register Form</h2>
        </div>
        <s:form action="userRegister" cssClass="registerFrm">
            <s:textfield name="username" label="Username" cssClass="field" />
            <s:textfield name="password" label="Password" cssClass="field" />
            <s:textfield name="first_name" label="First Name" cssClass="field" />
            <s:textfield name="last_name" label="Last Name" cssClass="field" />
            <s:textfield name="email_address" label="Email Address" cssClass="field" />
            <s:submit cssClass="registerBtn" value="Register"/>
        </s:form>
        <a href="index.jsp" class="backLk">Click this to go back</a>
    </div>
</body>
</html>