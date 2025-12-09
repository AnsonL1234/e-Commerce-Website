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

    <link rel="stylesheet" href="css/table.css">
    <title>ArtCraft - View All Bidding</title>
</head>
<body>
    <s:iterator value="bids">
            <a href="http://localhost:8080/online-business/index.action">Click here back to home page</a>
            <table>
                <thead>
                    <tr>
                        <th>Bidder</th>
                        <th>Bid Item</th>
                        <th>Price</th>
                        <th>Bid Amount</th>
                    </tr>
                </thead>
                <!-- <s:if test="BidID != 0"> -->
                    <tbody>
                        <tr>
                            <td>
                                <div class="userTag_ctr">
                                    <img src="assets/user.png" class="userIcon">
                                    <div class="info_ctr">
                                        <span class="name"><s:property value="BidderID.first_name" /> <s:property value="BidderID.last_name" /></span>
                                        <span class="username">@<s:property value="BidderID.username" /></span>
                                    </div>
                                </div>
                            </td>
                            <td><s:property value="ItemID.title" /></td>
                            <td><s:property value="ItemID.price" /></td>
                            <td><s:property value="BidAmount" /></td>
                        </tr>
                    </tbody>
                <!-- </s:if> -->
            </table>
        </s:iterator>
</body>
</html>