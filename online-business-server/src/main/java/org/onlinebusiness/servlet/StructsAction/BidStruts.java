package org.onlinebusiness.servlet.StructsAction;

import org.onlinebusiness.servlet.entity.Bid;
import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;
import org.onlinebusiness.servlet.repository.BidDAO;
import org.onlinebusiness.servlet.repository.ItemDAO;

import java.util.ArrayList;
import java.util.List;

public class BidStruts {
    private int BidderID;
    private int ItemID;
    private double bidAmount;
    private double finalAmount;
    private List<Bid> bids;
    public Bid bid;
    private final BidDAO bidDAO = new BidDAO();

    public BidStruts() {
        bid = new Bid();
    }

    public String executeBid() {

        if(bid.getBidderID() == null && bid.getItemID() == null) {
            bid.setBidderID(new User());
            bid.setItemID(new Item());
        }

        bid.getBidderID().setUserID(BidderID);
        System.out.println("DEBUG executeBid(): " + BidderID); // debug BidderID
        bid.getItemID().setItemID(ItemID);
        System.out.println("DEBUG executeBid(): " + ItemID); // debug ItemID
        bid.setBidAmount(bidAmount);
        return bidDAO.makeBid(bid);
    }

    public String getAllBids() {

        if(bid.getBidderID() == null && bid.getItemID() == null) {
            bid.setItemID(new Item());
        }

        System.out.println("DEBUG getAllBids(): " + ItemID);
        this.bids = bidDAO.getAllBidByItemID(ItemID);
        return "retrieveBids";
    }

    public int getBidderID() {
        return BidderID;
    }

    public void setBidderID(int bidderID) {
        BidderID = bidderID;
    }

    public int getItemID() {
        return ItemID;
    }

    public void setItemID(int itemID) {
        ItemID = itemID;
    }

    public double getBidAmount() {
        return bidAmount;
    }

    public void setBidAmount(double bidAmount) {
        this.bidAmount = bidAmount;
    }

    public double getFinalAmount() {
        return finalAmount;
    }

    public void setFinalAmount(double finalAmount) {
        this.finalAmount = finalAmount;
    }

    public List<Bid> getBids() {
        return bids;
    }

    public void setBids(List<Bid> bids) {
        this.bids = bids;
    }

    public Bid getBid() {
        return bid;
    }

    public void setBid(Bid bid) {
        this.bid = bid;
    }

    public BidDAO getBidDAO() {
        return bidDAO;
    }
}
