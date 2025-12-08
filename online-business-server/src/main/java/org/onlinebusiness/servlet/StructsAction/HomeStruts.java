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

    private List<Item> items;
    private final ItemDAO itemDAO = new ItemDAO();

    public String execute() {
        items = itemDAO.getAllItems();
        return "success";
    }


    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
