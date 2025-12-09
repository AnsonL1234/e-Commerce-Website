package org.onlinebusiness.servlet.StructsAction;

import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;
import org.onlinebusiness.servlet.repository.ItemDAO;

public class ItemStruts {
    private int SellerID;
    private String item_images;
    private String title;
    private String description;
    private int quantity;
    private double price;
    private String category;
    private Item item;
    private ItemDAO itemDAO = new ItemDAO();

    public ItemStruts() {

    }

    public ItemStruts(int sellerID, String item_images, String title, String description, int quantity, double price, String category, Item item, ItemDAO itemDAO) {
        SellerID = sellerID;
        this.item_images = item_images;
        this.title = title;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.category = category;
        this.item = item;
        this.itemDAO = itemDAO;
    }

    public String addNewItem() {
        if (item == null ) {
            item = new Item();
        }

        if (item.getSeller() == null) {
            item.setSeller(new User());
        }

        if(SellerID == 0 || title.isEmpty() || description.isEmpty() || quantity < 0 || price < 0 || category.isEmpty()) {
            return "fail";
        }

        item.getSeller().setUserID(SellerID);
        item.setItem_image(item_images);
        item.setTitle(title);
        item.setDescription(description);
        item.setQuantity(quantity);
        item.setPrice(price);
        item.setCategorise(category);
        return itemDAO.addNewItem(item);
    }

    public int getSellerID() {
        return SellerID;
    }

    public void setSellerID(int sellerID) {
        SellerID = sellerID;
    }

    public String getItem_images() {
        return item_images;
    }

    public void setItem_images(String item_images) {
        this.item_images = item_images;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public ItemDAO getItemDAO() {
        return itemDAO;
    }

    public void setItemDAO(ItemDAO itemDAO) {
        this.itemDAO = itemDAO;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
