package org.onlinebusiness.servlet.dao;

public class Item {
    private int ItemID;
    private User BuyerID;
    private User SellerID;
    private String item_image;
    private String title;
    private String description;
    private int quantity;
    private double price;
    private String categories;

    public Item() {

    }

    public Item(
            int itemID,
            User buyerID,
            User sellerID,
            String item_image,
            String title,
            String description,
            int quantity,
            double price,
            String categories
    ) {
        ItemID = itemID;
        BuyerID = buyerID;
        SellerID = sellerID;
        this.item_image = item_image;
        this.title = title;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.categories = categories;
    }

    public int getItemID() {
        return ItemID;
    }

    public void setItemID(int itemID) {
        ItemID = itemID;
    }

    public User getBuyerID() {
        return BuyerID;
    }

    public void setBuyerID(User buyerID) {
        BuyerID = buyerID;
    }

    public User getSellerID() {
        return SellerID;
    }

    public void setSellerID(User sellerID) {
        SellerID = sellerID;
    }

    public String getItem_image() {
        return item_image;
    }

    public void setItem_image(String item_image) {
        this.item_image = item_image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }
}
