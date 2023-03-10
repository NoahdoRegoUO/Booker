package src.db_connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBFunctions {

    public Connection connectToDB(String dbname, String username, String password) {
        Connection connect = null;

        try {
            Class.forName("org.postgresql.Driver");
            connect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + dbname, username, password);

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
}
