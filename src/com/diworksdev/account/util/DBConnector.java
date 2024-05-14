package com.diworksdev.account.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost/account";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(DRIVER_NAME); // JDBCドライバのロード
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
