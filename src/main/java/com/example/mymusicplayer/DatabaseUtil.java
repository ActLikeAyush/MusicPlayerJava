package com.example.mymusicplayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/music_db";
        String user = "root";
        String password = "root";
        return DriverManager.getConnection(url, user, password);
    }
}