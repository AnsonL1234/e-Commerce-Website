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
                        <button type="submit" class="bidBtn">Bid This Item</button>
                    </div>
                </div>
            </s:form>
            <table>
                <thead>
                    <tr>
                        <th>Bidder</th>
                        <th>Bid Item</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <img src="assets/user.png" class="userIcon">
                            <span></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </s:iterator>
    </div>
</body>
</html>