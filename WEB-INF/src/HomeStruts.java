package org.onlinebusiness.servlet.StructsAction;

import org.apache.struts2.interceptor.SessionAware;
import org.onlinebusiness.servlet.dao.Item;
import org.onlinebusiness.servlet.dao.User;

import java.util.List;
import java.util.Map;

public class HomeStruts implements SessionAware {

    private User user;
    private List<Item> items;
    private Map<String, Object> session;

    public HomeStruts() {

    }

    @Override
    public void setSession(Map map) {
        this.session = map;
    }

    public String retrieveData() {
        user = (User) session.get("currenUser");

        // if username doesn't exit in the map which mean the user haven't log in
        // then redirect user to the login
        if (user == null)
            return "Login";



        return "Homepage";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
