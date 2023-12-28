<%@ page import="java.sql.*, com.example.mymusicplayer.DatabaseUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Music Player</title>
</head>
<body>
    <h1>Music Player</h1>
    <ul>
        <% try {
            Connection connection = DatabaseUtil.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM songs");

            while (resultSet.next()) { %>
                <li>
                    <%= resultSet.getString("title") %> - <%= resultSet.getString("artist") %>
                </li>
            <% }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } %>
    </ul>
</body>
</html>