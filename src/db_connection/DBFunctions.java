package src.db_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBFunctions {

    public Connection connectToDB(String dbname, String schema, String username, String password) {
        Connection connect = null;

        try {
            Class.forName("org.postgresql.Driver");
            connect = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/" + dbname + "?currentSchema=" + schema, username, password);

            if (connect != null) {
                System.out.println("Connection successful.");
            } else {
                System.out.println("Connction failed.");
            }

        } catch (Exception e) {
            System.out.println("Unable to connect to database. See stack trace below:\n");
            e.printStackTrace();
        }

        return connect;
    }

    public void createTable(Connection connect, String tableName) {
        Statement statement;
        try {
            String query = "CREATE TABLE " + tableName + "(test TEXT, number INT,PRIMARY KEY(test));";
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Table created");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
