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

    <link rel="stylesheet" href="css/Item.css">
    <title>ArtCraft - View Item</title>
</head>
<body>
    <div class="item_ctr">
        <s:iterator value="item">
            <s:form action="bidItem">
                <s:hidden />
                <div class="panel_ctr">
                    <img src="assets/empty.jpg" alt="" class="empty_img">
                    <div class="item_info_ctr">
                        <h1 class="titleTag"><s:property value="title" /></h1>
                        <span class="descTag"><s:property value="description" /></span>
                        <span class="publisherTag">Seller: <s:property value="Seller.first_name" /></span>
                        <h5 class="priceTag">€ <s:property value="price" /></h5>
                        <s:if test="#session.currentUser != null">
                            <s:hidden name="BidderID" value="%{#session.currentUser.UserID}"/>
                            <s:hidden name="ItemID" value="%{ItemID}"/>
                            <s:hidden name="bidAmount" value="%{price}"/>
                            <button type="submit" id="bidBtn" class="bidBtn">Bid This Item</button>
                        </s:if>
                        <s:else>
                            <button type="button" id="un-bidBtn" class="bidBtn">Bid This Item</button>
                        </s:else>

                        <script>
                            $(document).ready(function() {
                                $("#un-bidBtn").click(function() {
                                    alert("You need to login before bidding!");
                                })

                                $("bidBtn").click(function() {
                                    alert("You have successfully bid on the item!")
                                })
                            })
                        </script>
                    </div>
                </div>
            </s:form>
            <s:form action="allBids">
                <s:hidden name="ItemID" value="%{ItemID}"/>
                <button type="submit" class="viewBtn">View all Bid</button>
            </s:form>
            <s:form action="viewProfile">
                <s:hidden name="UserID" value="%{Seller.UserID}"/>
                <button type="submit" class="viewBtn">View Seller Profile</button>
            </s:form>
        </s:iterator>
    </div>
</body>
</html>