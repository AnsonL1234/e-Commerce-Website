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
    <link rel="stylesheet" href="css/profile.css">
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
            <img src="assets/more.png" alt="plusIcons" class="plusIcons">
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
            <a href="MyProfile.jsp"><li class="navigator_list">View My Profile</li></a>
            <a href="http://"><li class="navigator_list">View All User</li></a>
        </ul>
    </nav>

    <s:iterator value="user">
        <div class="profile_body">
            <div class="profile_ctr">
                <h3>Profile</h3>
                <div class="panel">
                    <span class="left_pnl">Username</span>
                    <span class="right_pnl"><s:property value="username" /></span>
                </div>
                <div class="panel">
                    <span class="left_pnl">First Name</span>
                    <span class="right_pnl"><s:property value="first_name" /></span>
                </div>
                <div class="panel">
                    <span class="left_pnl">Last Name</span>
                    <span class="right_pnl"><s:property value="last_name" /></span>
                </div>
                <div class="panel">
                    <span class="left_pnl">Email Address</span>
                    <span class="right_pnl"><s:property value="email_address" /></span>
                </div>
            </div>
        </div>
    </s:iterator>
</body>
</html>