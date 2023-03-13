package src.db_connection;

import java.sql.Connection;

public class DBConnection {

    public static void main(String[] args) {
        DBFunctions db = new DBFunctions();
        Connection connection = db.connectToDB("postgres", "ehotels_db", "postgres", "gumbly456!");
        db.createTable(connection, "test");
    }
}