package org.onlinebusiness.servlet.StructsAction;

import org.apache.struts2.interceptor.SessionAware;
import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;
import org.onlinebusiness.servlet.repository.ItemDAO;
import org.onlinebusiness.servlet.repository.UserDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class HomeStruts {

    private int ItemID;
    private List<Item> items;
    public Item item;
    private final ItemDAO itemDAO = new ItemDAO();

    public String allItems() {
        items = itemDAO.getAllItems();
        return "allItems";
    }

    public String viewItem() {
        System.out.println("DEBUG: " + ItemID);
        item = itemDAO.getItemById(ItemID);
        return "viewItem";
    }

    public int getItemID() {
        return ItemID;
    }

    public void setItemID(int ItemID) {
        this.ItemID = ItemID;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
