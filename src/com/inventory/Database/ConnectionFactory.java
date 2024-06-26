/*
Author: Anandha Padmanabhan, Abin, Dominic
Team Null Out
 */
package com.inventory.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

//Class to retrieve connection for database and login verfication.
public class ConnectionFactory {

    static final String driver = "com.mysql.cj.jdbc.Driver";
    static final String url = "jdbc:mysql://localhost:3306/inventory";
    static String username;
    static String password;

    Properties prop;

    Connection conn = null;
    Statement statement = null;
    ResultSet resultSet = null;

    public ConnectionFactory(){

        username = "root";
        password = "root1231";

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
            statement = conn.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConn() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("Connected successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    //Login verification method
    public boolean checkLogin(String username, String password, String userType){
        String query = "SELECT * FROM users WHERE username='"
                + username
                + "' AND password='"
                + password
                + "' AND usertype='"
                + userType
                + "' LIMIT 1";

        try {
            resultSet = statement.executeQuery(query);
            if(resultSet.next()) return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
