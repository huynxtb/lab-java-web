package dao;

import config.DatabaseHelper;
import entities.Contact;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class ContactDAO {
    public Contact getContact() {
        try {
            Connection conn = DatabaseHelper.openConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from contact");
            while (rs.next()) {
                String address = rs.getString(1);
                String phoneNumber = rs.getString(2);
                String email = rs.getString(3);
                String openningHours = rs.getString(4); 
                String descriptionImage = rs.getString(5); 
                String introduction = rs.getString(6); 
                return new Contact(address, phoneNumber, email, openningHours, descriptionImage, introduction); 
            }
            conn.close();
            System.out.println("Get Contact successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get Contact failure!");
        }
        return null;
    }
}
