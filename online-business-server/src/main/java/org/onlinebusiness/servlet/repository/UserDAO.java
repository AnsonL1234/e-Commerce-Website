package org.onlinebusiness.servlet.repository;

import org.onlinebusiness.servlet.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    private final String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private final String USERNAME = "root";
    private final String PASSWORD = "root";
    private Connection connection = null;

    public User login(String username, String password) {
        User user = null;

        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: DATABASE CONNECT!");

            String loginQuery = "SELECT * FROM ecommerce.user WHERE username=? AND password=?";
            PreparedStatement ps = connection.prepareStatement(loginQuery);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet returnResult = ps.executeQuery();
            if (returnResult.next()) {
                user = new User();
                user.setUserID(returnResult.getInt("userID"));
                user.setUsername(returnResult.getString("username"));
                user.setPassword(returnResult.getString("password"));
                user.setFirst_name(returnResult.getString("first_name"));
                user.setLast_name(returnResult.getString("last_name"));
                user.setBalance(returnResult.getDouble("balance"));
                user.setEmail_address(returnResult.getString("email_address"));
            }
        } catch (SQLException s) {
            System.out.println("SQL Connect Unsuccessfully!");
        }
        return user;
    }

    public String storeUser(User user) {
        String result = "";
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: DATABASE CONNECT!");

            result = validateUser(user);
        } catch (SQLException s) {
            System.out.println("SQL Connect Unsuccessfully!");
        }
        return result;
    }

    protected String validateUser(User user) {
        String validateUserQuery = "SELECT * FROM ecommerce.user WHERE username = ? AND password = ?";
        PreparedStatement ps;
        String result = "";
        try {
            ps = connection.prepareStatement(validateUserQuery);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            ResultSet returnResult = ps.executeQuery();
            if (returnResult.next()) {
                result = "fail";
                return result;
            } else {
                result = updateDatabase(user);
            }
        } catch (SQLException s) {
            throw new RuntimeException(s);
        }
        return result;
    }

    protected String updateDatabase(User user) {
        String loginQuery = "INSERT INTO User(username, password, first_name, last_name, balance, email_address) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = null;
        String result = "";
        try {
            ps = connection.prepareStatement(loginQuery);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFirst_name());
            ps.setString(4, user.getLast_name());
            ps.setDouble(5, user.getBalance());
            ps.setString(6, user.getEmail_address());

            int insertRow = ps.executeUpdate();
            if (insertRow > 0) {
                result = "successfulRegister";
            }
        } catch(SQLException s) {
            throw new RuntimeException(s);
        }
        return result;
    }

    public User findUserByID(int id) {
        User user = null;

        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: DATABASE CONNECT!");

            String findUserQuery = "SELECT * FROM ecommerce.user WHERE UserID = ?";
            PreparedStatement ps = connection.prepareStatement(findUserQuery);
            ps.setInt(1, id);
            ResultSet returnResult = ps.executeQuery();
            if (returnResult.next()) {
                user = new User();
                user.setUserID(returnResult.getInt("UserID"));
                user.setUsername(returnResult.getString("username"));
                user.setPassword(returnResult.getString("password"));
                user.setFirst_name(returnResult.getString("first_name"));
                user.setLast_name(returnResult.getString("last_name"));
                user.setEmail_address(returnResult.getString("email_address"));
            }
        } catch (SQLException s) {
            System.out.println("SQL Connect Unsuccessfully!");
        }
        return user;
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();

        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG getAllUsers(): DATABASE CONNECT!");

            String findAllUserQuery = "SELECT * FROM ecommerce.user";
            PreparedStatement ps = connection.prepareStatement(findAllUserQuery);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt("UserID"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLast_name(rs.getString("last_name"));
                user.setEmail_address(rs.getString("email_address"));
                users.add(user);
            }
        } catch (SQLException s) {
            System.out.println("DEBUG getAllUsers(): SQL Connect Unsuccessfully!");
        }
        return users;
    }
}
