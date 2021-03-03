package dao;

import config.DatabaseHelper;
import entities.About;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class AboutDAO {
    public About getAbout() {
        try {
            Connection conn = DatabaseHelper.openConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from about");
            while (rs.next()) {
                String name = rs.getString(1);
                String imageDescription = rs.getString(2);
                String content = rs.getString(3);
                return new About(name, imageDescription, content); 
            }
            conn.close();
            System.out.println("Get About successfully!");
        } catch (Exception e) {
            System.err.println(e);
            System.err.println("Get About failure!");
        }
        return null;
    }
}
