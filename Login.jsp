<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
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

    <link rel="stylesheet" href="css/Login.css">
    <title>ArtCraft - Login Page</title>
</head>
<body id="root">
    <div class="loginFrm_container">
        <div class="loginFrm_title_container">
            <h2>Login Form</h2>
        </div>
        <s:if test="#session.currentUser == null">
            <s:form action="userLogin" cssClass="loginFrm">
                <s:textfield name="username" label="Username" cssClass="usernameFld" />
                <s:textfield name="password" label="Password" cssClass="passwordFld" />
                <s:submit cssClass="loginBtn" value="Login"/>
            </s:form>
        </s:if>
        <s:else>
            <a href="index.jsp">Go to Home Page</a>
        </s:else>
        <a href="Register.jsp" class="registerLk">Doesn't have an account? Click to Register!</a>
        <a href="index.jsp" class="backLk">Click this to go back</a>
    </div>
</body>
</html>