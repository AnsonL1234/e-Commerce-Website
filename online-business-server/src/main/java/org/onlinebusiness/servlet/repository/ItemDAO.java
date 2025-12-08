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
}
