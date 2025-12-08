package org.onlinebusiness.servlet.entity;

public class Item {
    private User Buyer;
    private User Seller;
    private String item_image;
    private String title;
    private String description;
    private int quantity;
    private double price;
    private String categorise;

    public Item() {

    }

    public Item(
            User buyer,
            User seller,
            String item_image,
            String title,
            String description,
            int quantity,
            double price,
            String categorise
    ) {
        Buyer = buyer;
        Seller = seller;
        this.item_image = item_image;
        this.title = title;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.categorise = categorise;
    }

    public User getBuyer() {
        return Buyer;
    }

    public void setBuyer(User buyer) {
        Buyer = buyer;
    }

    public User getSeller() {
        return Seller;
    }

    public void setSeller(User seller) {
        Seller = seller;
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

    public String getCategorise() {
        return categorise;
    }

    public void setCategorise(String categorise) {
        this.categorise = categorise;
    }
}
