package org.onlinebusiness.servlet.entity;

public class Bid {
    private int BidID;
    private User BidderID;
    private Item ItemID;
    private double BidAmount;
    private double FinalAmount;

    public Bid() {

    }

    public Bid(int bidID, User bidderID, Item itemID, double bidAmount, double finalAmount) {
        BidID = bidID;
        BidderID = bidderID;
        ItemID = itemID;
        BidAmount = bidAmount;
        FinalAmount = finalAmount;
    }

    public int getBidID() {
        return BidID;
    }

    public void setBidID(int bidID) {
        BidID = bidID;
    }

    public User getBidderID() {
        return BidderID;
    }

    public void setBidderID(User bidderID) {
        BidderID = bidderID;
    }

    public Item getItemID() {
        return ItemID;
    }

    public void setItemID(Item itemID) {
        ItemID = itemID;
    }

    public double getBidAmount() {
        return BidAmount;
    }

    public void setBidAmount(double bidAmount) {
        BidAmount = bidAmount;
    }

    public double getFinalAmount() {
        return FinalAmount;
    }

    public void setFinalAmount(double finalAmount) {
        FinalAmount = finalAmount;
    }
}
