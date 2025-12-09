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

    <link rel="stylesheet" href="css/Homepage.css">
    <title>ArtCraft - Homepage</title>
</head>
<body id="root">
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
        </div>
    </header>

    <nav>
        <ul id="nav_top" class="nav_top">
            <li class="navigator_list">
                <a href="MyProfile.jsp" class="link">View My Profile</a>
            </li>

            <li class="navigator_list">
                <s:form action="getAllUsers">
                    <s:submit value="View All Users" cssClass="navBtn"/>
                </s:form>
            </li>
        </ul>
    </nav>

    <!-- display login message -->
    <s:if test="#session.currentUser != null">
        <h1 class="welcome-msg">Welcome, you logged in as <s:property value="#session.currentUser.first_name" /></h1>
    </s:if>

    <!-- Get all items from -->
    <div class="itemLt">
        <s:iterator value="items">
            <s:form action="view_item">
                <!-- <s:hidden name="SellerID" value="%{Seller.UserID}" /> -->
                <div class="cart_card">
                    <div class="image_container">
                        <img src="assets/empty.jpg" alt="" class="item_img">
                    </div>
                    <div class="bottom_content_container">
                        <div class="content_container">
                            <h2 class="title"><s:property value="title" /></h2>
                            <span class="des_ctr"><s:property value="description" /></span>
                        </div>
                        <span class="publisher_ctr">
                            Publisher: <s:property value="Seller.first_name" />
                        </span>
                        <div class="btnContainer">
                            <s:hidden name="ItemID" value="%{ItemID}" />
                            <s:property value="ItemID" />
                            <button type="submit" class="cardBtn">View</button>
                        </div>
                    </div>
                </div>
            </s:form>
        </s:iterator>
    </div>

    <div id="dialog" title="Balances">
        <div class="wallet_info_container">
            <img src="assets/infoIcon.png" alt="infoIcon" class="infoIcon">
            <span class="euro_title">EUR</span>
        </div>
        <div class="balance_container">
            <div class="symbol_panel">
                <img src="assets/euro-currency-symbol.png" alt="eurosymbolIcon" class="eurosymbolIcon">
                <span class="balance"><s:property value="#session.currentUser.balance" /></span>
            </div>
        </div>
        <form action="" class="topup_form">
            <input type="text" name="addBalance" id="addBalance" class="addBalanceField">
            <button type="submit" class="topupBtn">
                    Top Up
            </button>
        </form>
    </div>

    <script>
        $(document).ready(function () {
            // Initialize the dialog but keep it closed
            $("#dialog").dialog({
                autoOpen: false
            });

            // Open the dialog on button click
            $("#openDialog").click(function () {
                $("#dialog").dialog("open");
            });
        });
    </script>
</body>
</html>