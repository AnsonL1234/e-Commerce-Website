<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery script and css-->
    <!-- Source: https://www.geeksforgeeks.org/jquery/how-to-generate-a-simple-popup-using-jquery/ -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="css/Homepage.css">
    <link rel="stylesheet" href="css/table.css">
    <title>Document</title>
</head>
<body>
    <header>
        <img src="assets/ArtCRAFT.png" alt="artcraftlogo" class="artcraftlogo">
        <div class="middle_header_container">
            <input type="text" name="seach" id="seach" class="seach" placeholder="Search Items">
            <img src="assets/search.png" alt="searchicons" class="searchicons">
        </div>
        <div class="right_header_container">
            <a href="AddItem.jsp"><img src="assets/more.png" alt="plusIcons" class="plusIcons"></a>
            <img src="assets/wallet.png" alt="icons" class="walleticon" id="openDialog">
            <img src="assets/grocery-store.png" alt="icons" class="groceryicon">
            
            <!-- If currentUser is not null mean user has login in -->
            <!-- sources: https://www.tutorialspoint.com/struts_2/struts_if_else_tags.htm -->
            <s:if test="#session.currentUser != null">
                <div class="userTag_container">
                    <img src="assets/user.png" alt="" class="userIcons">
                    <span class="loginFrm_userInfo_container">
                        <span class="first_name_tag"><s:property value="#session.currentUser.first_name" /></span>
                        <span class="email_address_tag"><s:property value="#session.currentUser.email_address" /></span>
                    </span>
                </div>
            </s:if>

            <!-- Othewise currentUser is null mean user has logout -->
            <s:else>
                <button type="button" class="loginBtn">
                    <a href="Login.jsp" class="login_Lk">
                        Login
                    </a>
                </button>
            </s:else>
        </div>
    </header>
    <nav>
        <ul id="nav_top" class="nav_top">
            <li class="navigator_list">
                <a href="MyProfile.jsp">View My Profile</a>
            </li>

            <li class="navigator_list">
                <s:form action="getAllUsers">
                    <s:submit value="View All Users" cssClass="nav_button"/>
                </s:form>
            </li>
        </ul>
    </nav>

    <!-- If currentUser is not null mean user has login in -->
            <!-- sources: https://www.tutorialspoint.com/struts_2/struts_if_else_tags.htm -->
            <s:if test="#session.currentUser != null">
                <div class="userTag_container">
                    <img src="assets/user.png" alt="" class="userIcons">
                    <span class="loginFrm_userInfo_container">
                        <span class="first_name_tag"><s:property value="#session.currentUser.first_name" /></span>
                        <span class="email_address_tag"><s:property value="#session.currentUser.email_address" /></span>
                    </span>
                </div>
                <s:form action="logout">
                    <s:submit value="Logout" cssClass="logoutBtn"/>
                </s:form>
            </s:if>

            <!-- Othewise currentUser is null mean user has logout -->
            <s:else>
                <button type="button" class="loginBtn">
                    <a href="Login.jsp" class="login_Lk">
                        Login
                    </a>
                </button>
            </s:else>

    <div class="profile_body">
        
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>email</th>
                </tr>
            </thead>
                <!-- <s:if test="BidID != 0"> -->
            <tbody>
                <s:iterator value="users">
                    <tr>
                        <td><s:property value="username" /></td>
                        <td><s:property value="first_name" /></td>
                        <td><s:property value="last_name" /></td>
                        <td><s:property value="email_address" /></td>
                    </tr>
                </s:iterator>
            </tbody>
                <!-- </s:if> -->
        </table>
    </div>
</body>
</html>