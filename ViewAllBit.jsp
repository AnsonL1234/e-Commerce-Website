<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <s:iterator value="bids">
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
                                <img src="assets/user.png" class="userIcon">
                                <div class="userTag_ctr">
                                    <span class="name"><s:property value="BidderID.first_name" /><s:property value="BidderID.last_name" /></span>
                                    <span class="username">@<s:property value="BidderID.username" /></span>
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