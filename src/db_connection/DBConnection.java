package src.db_connection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

public class DBConnection {

    public static void main(String[] args) throws Exception {
        DBFunctions db = new DBFunctions();
        Connection connection = db.connectToDB("postgres", "ehotels_db", "postgres", "BostonBruins74");

        String[] what = new String[]{"what","huh"};

        // db.addBooking(connection, 2, Date.valueOf("2023-03-15"), Date.valueOf("2023-03-17"), what, 4, 20);

        // db.addRenting(connection, 1, Date.valueOf("2023-05-16"), Date.valueOf("2023-06-15"), what, 3, 14);

        // db.addCentralOffice(connection, 234, "bingus street", "Haiz");

        // db.addCustomer(connection, 1, 123456789, "Noah Do Rego", "Whatever# What, Dr, Ottawa, Ontario", 19, Date.valueOf("2023-03-15"), 7576767612345678L);

        // db.addEmployee(connection, 222, 123123123, "Alex Clements", "My street dr, Ottawa, Ontario", 19, 44);

        // db.addHotel(connection, 45, "Fun Place Hotel", "213 Whatever St, Toronto, Ontario", 4, new String[]{"123456123"}, new String[]{"haiz00045@gmail.com"}, "Haiz");

        // db.addHotelChain(connection, "Deego", 6, new String[]{"123789456"}, new String[]{"deego@gmail.com"});

        // db.addPosition(connection, "Washer", 12345.34, 12);

        // db.addRoom(connection, 222, 250.23, false, new String[]{"Air Conditioning"}, true, "Sea", new String[]{"None"}, 4, 44);
    }
}