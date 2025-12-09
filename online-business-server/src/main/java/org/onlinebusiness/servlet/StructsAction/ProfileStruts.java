package org.onlinebusiness.servlet.StructsAction;

import org.onlinebusiness.servlet.entity.User;
import org.onlinebusiness.servlet.repository.UserDAO;

public class ProfileStruts {
    private int UserID;
    private User user;
    private UserDAO userDAO = new UserDAO();

    public String viewOtherProfile() {
        user = userDAO.findUserByID(UserID);
        return "success";
    }

    public ProfileStruts() {

    }

    public ProfileStruts(int userID, User user, UserDAO userDAO) {
        UserID = userID;
        this.user = user;
        this.userDAO = userDAO;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
