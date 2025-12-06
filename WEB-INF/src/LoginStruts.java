package org.onlinebusiness.servlet.StructsAction;

import org.apache.struts2.interceptor.SessionAware;
import org.onlinebusiness.servlet.dao.User;
import org.onlinebusiness.servlet.repository.UserDAO;

import java.util.Map;

public class LoginStruts implements SessionAware {

    private String username;

    private String password;
    private User user;

    private UserDAO userDAO;

    private Map<String, Object> session;

    public LoginStruts() {

    }

    public LoginStruts(String username, String password) {
        this.username = username;
        this.password = password;
    }

    @Override
    public void setSession(Map map) {
        this.session = map;
    }

    public String userLogin() {
        User user = userDAO.login(username, password);
        if (user != null) {
            session.put("currentUser", user);
            return "success";
        }
        return "fail";
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}