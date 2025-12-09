package org.onlinebusiness.servlet.repository;

import org.onlinebusiness.servlet.entity.Bid;
import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BidDAO {
    private final String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private final String USERNAME = "root";
    private final String PASSWORD = "root";
    private Connection connection = null;

    public List<Bid> getAllBidByItemID(int itemID) {
        List<Bid> bids = new ArrayList<>();
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected to database");

            String bidById = "select * from ecommerce.bid where ItemID=?";
            PreparedStatement ps = connection.prepareStatement(bidById);
            ps.setInt(1, itemID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Bid bid = new Bid();

                // passing the user data object
                UserDAO userDAO = new UserDAO();
                User bidder = userDAO.findUserByID(rs.getInt("BidderID"));

                // passing the item data object
                ItemDAO itemDAO = new ItemDAO();
                Item item = itemDAO.getItemById(rs.getInt("ItemID"));

                // passing the bidding data
                bid.setBidID(rs.getInt("BidID"));
                bid.setBidderID(bidder);
                bid.setItemID(item);
                bid.setBidAmount(rs.getDouble("BidAmount"));
                bids.add(bid);
            }
        } catch (SQLException e) {
             System.out.println("SQLException: Database Connection Failed");
        }
        return bids;
    }

    public String makeBid(Bid bid) {
        String result = "";
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected to database");

            String checkBidExists = "select * from ecommerce.bid where BidderID=? AND ItemID=?";
            PreparedStatement ps = connection.prepareStatement(checkBidExists);
            ps.setInt(1, bid.getBidderID().getUserID());
            ps.setInt(2, bid.getItemID().getItemID());
            ResultSet rs = ps.executeQuery();

            // if user exists then update the specific bid amount
            // otherwise make a new bidding record
            if (rs.next()) {
                double oldAmount = rs.getDouble("BidAmount");
                result = updateBidAmount(bid.getBidderID().getUserID(), bid.getItemID().getItemID(), oldAmount);
            } else {
                result = createBid(bid);
            }
        } catch (SQLException e) {
            System.out.println("SQLException: Database Connection Failed");
            throw new RuntimeException(e);
        }
        return result;
    }

    public String updateBidAmount(int bidderID, int itemID, double oldAmount) {
        String result = "";
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected to database");

            double newAmount = oldAmount + (oldAmount * 0.10);
            System.out.println("DEBUG newAmount: " + newAmount);

            String updateBidBalance = "update ecommerce.bid set BidAmount=? where ItemID=? AND BidderID=?";
            PreparedStatement ps = connection.prepareStatement(updateBidBalance);
            ps.setDouble(1, newAmount);
            ps.setInt(2, itemID);
            ps.setInt(3, bidderID);
            int rows = ps.executeUpdate();
            if (rows > 0) {
                System.out.println("DEBUG updateBidAmount(): Update successfully");
                result = "success";
            } else {
                result = "fail";
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return result;
    }

    public String createBid(Bid bid) {
        String result = "";
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected to database");
            double newBidAmount = bid.getBidAmount() * 0.10;
            String bidingQuery = "INSERT INTO ecommerce.bid (BidderID, ItemID, BidAmount) VALUES (?,?,?)";
            PreparedStatement ps = connection.prepareStatement(bidingQuery);
            ps.setInt(1, bid.getBidderID().getUserID());
            ps.setInt(2, bid.getItemID().getItemID());
            ps.setDouble(3, newBidAmount);
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                result = "success";
            } else {
                result = "fail";
            }
        } catch (SQLException e) {
            System.out.println("SQLException: Database Connection Failed");
            throw new RuntimeException(e);
        }
        return result;
    }
}
