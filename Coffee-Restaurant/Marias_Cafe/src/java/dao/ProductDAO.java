package dao;

import config.DatabaseHelper;
import entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductDAO {
    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> allProducts = new ArrayList<>();
        try {
            Connection conn = DatabaseHelper.openConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from products order by page_count desc");
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String descriptionPicture = rs.getString(3);
                String content = rs.getString(4);
                long price = rs.getLong(5); 
                int pageCount = rs.getInt(6); 
                allProducts.add(new Product(id, name, descriptionPicture, content, price, pageCount));
            }
            conn.close();
            System.out.println("Get all products successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get all products failure!");
        }
        return allProducts;
    }

    public Product searchById(int pId) {
        try {
            Connection conn = DatabaseHelper.openConnection();
            String sql = "Select * from products where id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, pId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String descriptionPicture = rs.getString(3);
                String content = rs.getString(4);
                long price = rs.getLong(5); 
                int pageCount = rs.getInt(6); 
                conn.close();
                return new Product(id, name, descriptionPicture, content, price, pageCount); 
            }
            System.out.println("Get product by id successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get prodcut by id failure!");
        }
        return null;
    }
    
    public int addNewProduct(String name, String descriptionImage, String content, long price, int pageCount) {
        int rc = 0;
        try {      
            Connection conn = DatabaseHelper.openConnection();
            String sql = "Insert into products(name, description_image, content, price, page_count) values (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, descriptionImage);
            stmt.setString(3, content);
            stmt.setLong(4, price);
            stmt.setInt(5, pageCount);
            rc = stmt.executeUpdate();
            conn.close();
            System.out.println("Add new Product successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Add new Product failure!");
        }
        return rc;
    }
    
    public ArrayList<Product> get2PopularProducts() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            Connection conn = DatabaseHelper.openConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select top 2 * from products order by page_count desc");
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String descriptionPicture = rs.getString(3);
                String content = rs.getString(4);
                long price = rs.getLong(5); 
                int pageCount = rs.getInt(6); 
                products.add(new Product(id, name, descriptionPicture, content, price, pageCount));
            }
            conn.close();
            System.out.println("Get all products successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get all products failure!");
        }
        return products;
    }
    
    public int updatePost(int id, int pageCount) {
        int rc = 0;
        try {
           
            Connection conn = DatabaseHelper.openConnection();
            
            String sql = "Update products set page_count = ? where id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, pageCount);
            stmt.setInt(2, id);
            rc = stmt.executeUpdate();
            conn.close();
            System.out.println("Update cake successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Update cake failure!");
        }
        return rc;
    } 
    
    public Product getNewestProduct() {
        Product product = null; 
        try {
            Connection conn = DatabaseHelper.openConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select top 1 * from products order by id desc");
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String descriptionPicture = rs.getString(3);
                String content = rs.getString(4);
                long price = rs.getLong(5); 
                int pageCount = rs.getInt(6); 
                product = new Product(id, name, descriptionPicture, content, price, pageCount); 
            }
            conn.close();
            System.out.println("Get newest Product successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get newest Product failure!");
        }
        return product;
    }
//    public static void main(String[] args) {
//        ProductDAO dao = new ProductDAO(); 
//        System.out.println(dao.getNewestProduct().getName());
//    }
}
