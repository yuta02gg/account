package com.diworksdev.account.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.diworksdev.account.util.DBConnector;

public class UserCreateCompleteDAO {
    private DBConnector dbConnector = new DBConnector();
    private Connection connection = dbConnector.getConnection();

    private String sql = "INSERT INTO login_user_transaction (family_name, last_name, family_name_kana, last_name_kana, email, password, gender, postal_code, prefecture, city, address, role, insert_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now())";

    public void createUser(String family_name, String last_name, String family_name_kana, String last_name_kana, String email, String password, String gender, String postal_code, String prefecture, String city, String address, String role) throws SQLException {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, family_name);
            preparedStatement.setString(2, last_name);
            preparedStatement.setString(3, family_name_kana);
            preparedStatement.setString(4, last_name_kana);
            preparedStatement.setString(5, email);
            preparedStatement.setString(6, password);
            preparedStatement.setString(7, gender);
            preparedStatement.setString(8, postal_code);
            preparedStatement.setString(9, prefecture);
            preparedStatement.setString(10, city);
            preparedStatement.setString(11, address);
            preparedStatement.setString(12, role);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
    }
}
