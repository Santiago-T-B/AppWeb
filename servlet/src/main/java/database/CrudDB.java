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

    public void createProduct(String name, String description, int price, String url){
        try {
            String query = "INSERT INTO products (name,description,price,url) values (?,?,?,?)";
            ps = connection.getConexion().prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setInt(3, price);
            ps.setString(4, url);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<Products> receiveAllProducts(){
        ArrayList<Products> products = new ArrayList<>();
        try{
            String query = "SELECT * FROM products";
            ps = connection.getConexion().prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                Products product = new Products(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getString("url")
                );
                products.add(product);
            }
            
        } catch (Exception e){
            System.out.println(e);
        }
        return products;
    }

    public Products receiveProduct(int id) {
        Products product = new Products();
        try {
            String query = "SELECT * FROM products WHERE id = ?";
            ps = connection.getConexion().prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {      
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getInt("price"));
                product.setUrl(rs.getString("url"));                             
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return product;
    }
    
    public void editProduct(int id, String name, String description, int price, String url){
        try {
            String query = "UPDATE products SET name = ?, description = ?, price = ?, url = ? WHERE id = ?";
            ps = connection.getConexion().prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,description);
            ps.setInt(3, price);
            ps.setString(4, url);
            ps.setInt(5, id);
            rs = ps.executeQuery();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void removeProduct(int id){
        try {
            String query = "DELETE FROM products WHERE id = ?";
            ps = connection.getConexion().prepareStatement(query);
            ps.setInt(1,id);
            rs = ps.executeQuery();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
