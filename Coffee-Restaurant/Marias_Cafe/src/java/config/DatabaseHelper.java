/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kinvo
 */
public class DatabaseHelper {

    public static Connection openConnection() throws Exception {
        String connectionURL = "jdbc:sqlserver://localhost:1433;databaseName=marias_coffee;User=sa;Password=01256389972";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection(connectionURL);
        return conn;
    }

    public static void main(String[] args) {
        try {
            if (openConnection() != null) {
                System.out.println("Connect Success");
            }
        } catch (Exception ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
