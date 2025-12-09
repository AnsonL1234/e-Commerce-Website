package org.onlinebusiness.servlet.repository;

import org.onlinebusiness.servlet.entity.Item;
import org.onlinebusiness.servlet.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemDAO {
    private final String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private final String USERNAME = "root";
    private final String PASSWORD = "root";
    private Connection connection = null;

    public List<Item> getAllItems() {
        List<Item> items = new ArrayList<Item>();
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: DATABASE CONNECT!");

            String selectQuery = "SELECT * FROM item";
            PreparedStatement selectStatement = connection.prepareStatement(selectQuery);
            ResultSet resultSet = selectStatement.executeQuery();
            while (resultSet.next()) {

                // find the specific seller by it id
                UserDAO userDAO = new UserDAO();
                User user = userDAO.findUserByID(resultSet.getInt("SellerID"));

                // transfer data into Item object and add to items list
                Item item = new Item();
                item.setSeller(user);
                item.setItemID(resultSet.getInt("ItemID"));
                item.setItem_image(resultSet.getString("item_images"));
                item.setTitle(resultSet.getString("title"));
                item.setDescription(resultSet.getString("description"));
                item.setQuantity(resultSet.getInt("quantity"));
                item.setPrice(resultSet.getDouble("price"));
                item.setCategorise(resultSet.getString("categorise"));
                items.add(item);
            }
        } catch (SQLException s) {
            throw new ExceptionInInitializerError(s);
        }
        return items;
    }

    public Item getItemById(int id) {
        Item item = null;
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: DATABASE CONNECT!");

            PreparedStatement selectStatement = connection.prepareStatement("SELECT * FROM ecommerce.item WHERE ItemID = ?");
            selectStatement.setInt(1, id);
            ResultSet resultSet = selectStatement.executeQuery();
            if (resultSet.next()) {
                UserDAO userDAO = new UserDAO();
                User user = userDAO.findUserByID(resultSet.getInt("SellerID"));

                item = new Item();
                item.setSeller(user);
                item.setItemID(resultSet.getInt("ItemID"));
                item.setItem_image(resultSet.getString("item_images"));
                item.setTitle(resultSet.getString("title"));
                item.setDescription(resultSet.getString("description"));
                item.setQuantity(resultSet.getInt("quantity"));
                item.setPrice(resultSet.getDouble("price"));
                item.setCategorise(resultSet.getString("categorise"));
            }
        } catch (SQLException s) {
            System.out.println("DEBUG1: getItemByID DATABASE CONNECTION FAILED!");
            throw new ExceptionInInitializerError(s);
        }
        return item;
    }

    public String addNewItem(Item item) {
        String result = "";
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("DEBUG1: addNewItem DATABASE CONNECT!");
            String insertQuery = "INSERT INTO ecommerce.item(SellerID, item_images, title, description, quantity, price, categorise) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement insertStatement = connection.prepareStatement(insertQuery);
            insertStatement.setInt(1, item.getSeller().getUserID());
            insertStatement.setString(2, item.getItem_image());
            insertStatement.setString(3, item.getTitle());
            insertStatement.setString(4, item.getDescription());
            insertStatement.setInt(5, item.getQuantity());
            insertStatement.setDouble(6, item.getPrice());
            insertStatement.setString(7, item.getCategorise());
            int rows = insertStatement.executeUpdate();
            if (rows > 0) {
                result = "success";
            } else {
                result = "fail";
            }

        } catch (SQLException s) {
            System.out.println("DEBUG1: addNewItem DATABASE CONNECTION FAILED!");
            throw new ExceptionInInitializerError(s);
        }
        return result;
    }
}
