<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%@taglib uri="/struts-tags" prefix="s" %> -->
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
            <img src="assets/more.png" alt="plusIcons" class="plusIcons">
            <img src="assets/wallet.png" alt="icons" class="walleticon" id="openDialog">
            <img src="assets/grocery-store.png" alt="icons" class="groceryicon">
            <button type="button" class="loginBtn">
                Login
            </button>
        </div>
    </header>
    <nav>
        <ul id="nav_top" class="nav_top">
            <li class="navigator_list">Products</li>
            <li class="navigator_list">Bid Products</li>
        </ul>
    </nav>
    <div id="dialog" title="Balances">
        <div class="wallet_info_container">
            <img src="assets/infoIcon.png" alt="infoIcon" class="infoIcon">
            <span class="euro_title">EUR</span>
        </div>
        <div class="balance_container">
            <div class="symbol_panel">
                <img src="assets/euro-currency-symbol.png" alt="eurosymbolIcon" class="eurosymbolIcon">
                <span class="balance">0.00</span>
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