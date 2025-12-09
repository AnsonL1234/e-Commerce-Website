package org.onlinebusiness.servlet.StructsAction;

import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;
import org.onlinebusiness.servlet.repository.UserDAO;

import java.util.ArrayList;
import java.util.List;

public class ProfileStruts {
    private int UserID;
    private User user;
    private List<User> users = new ArrayList<User>();
    private UserDAO userDAO = new UserDAO();

    public String viewOtherProfile() {
        user = userDAO.findUserByID(UserID);
        return "success";
    }

    public String viewAllUsers() {
        users = userDAO.getAllUsers();
        return "retrieveAllUsers";
    }

    public ProfileStruts() {

    }

    public ProfileStruts(int userID, User user, List<User> users, UserDAO userDAO) {
        UserID = userID;
        this.user = user;
        this.users = users;
        this.userDAO = userDAO;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> items) {
        this.users = items;
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
