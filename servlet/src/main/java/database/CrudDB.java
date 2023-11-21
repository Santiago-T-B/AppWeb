/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import models.Products;

/**
 *
 * @author argen
 */
public class CrudDB {

    PreparedStatement ps = null;
    ConexionDB connection = new ConexionDB();
    ResultSet rs = null;

    public void createProduct(String name, String description, String price) throws SQLException {
        try {
            Statement statement = connection.getConexion().createStatement();
            String query = "INSERT INTO products (name,description,price) values (?,?,?)";
            ps = connection.getConexion().prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, price);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Products receiveProduct(int id) {
        try {
            String query = "SELECT * FROM products WHERE id = ?";
            ps = connection.getConexion().prepareStatement(query);
            ps.setString(1, String.valueOf(id));
            rs = ps.executeQuery();
            if (rs.next()) {
                Products product = new Products(
                        Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("description"),
                        Integer.parseInt(rs.getString("price"))
                );
                return product;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
