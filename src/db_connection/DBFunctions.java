package src.db_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.sql.Array;

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

    public void addArchive(Connection connect, int archiveID, String archiveType, Date startDate, Date endDate, Array specialRequests, int hotelID, int roomNumber, int customerID) throws SQLException{
        Statement statement;
        
        try {
            String query = String.format("INSERT INTO archive VALUES ('%s','%s','%s','%s','%s','%s', '%s', '%s');", archiveID, archiveType, startDate, endDate, specialRequests, hotelID, roomNumber, customerID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Archive Row Added");
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void addBooking(Connection connect, int bookingID, Date startDate, Date endDate, String[] specialRequests, int hotelID, int roomNumber, int customerID) throws SQLException{
        Statement statement;

        Array sr = connect.createArrayOf("text", specialRequests);

        try {
            String query = String.format("INSERT INTO booking VALUES ('%s','%s','%s','%s','%s','%s','%s');", bookingID, startDate, endDate, sr, hotelID, roomNumber, customerID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Booking Row Added");

            addArchive(connect, bookingID, "booking", startDate, endDate, sr, hotelID, roomNumber, customerID);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void addCentralOffice(Connection connect, int officeID, String officeAddress, String chainName){
        Statement statement;

        try{
            String query = String.format("INSERT INTO centraloffice VALUES ('%s','%s','%s');", officeID, officeAddress, chainName);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Central Office Row Added");
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void addCustomer(Connection connect, int customerID, int sin, String fullName, String customerAddress, int age, Date registrationDate, Long ccNum){
        Statement statement;

        try{
            String query = String.format("INSERT INTO customer VALUES ('%s','%s','%s','%s','%s','%s','%s');", customerID, sin, fullName, customerAddress, age, registrationDate, ccNum);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Customer Row Added");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addEmployee(Connection connect, int employeeID, int sin, String fullName, String employeeAddress, int age, int hotelID){
        Statement statement;

        try{
            String query = String.format("INSERT INTO employee VALUES ('%s','%s','%s','%s','%s','%s');", employeeID, sin, fullName, employeeAddress, age, hotelID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Employee Row Added");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addHotel(Connection connect, int hotelID, String hotelName, String hotelAddress, int stars, String[] phoneNumbers, String[] contactEmails, String chainName) throws SQLException{
        Statement statement;

        Array pn = connect.createArrayOf("text", phoneNumbers);
        Array ce = connect.createArrayOf("text", contactEmails);

        try{
            String query = String.format("INSERT INTO hotel VALUES ('%s','%s','%s','%s','%s','%s','%s');", hotelID, hotelName, hotelAddress, stars, pn, ce, chainName);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Hotel Row Added");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addHotelChain(Connection connect, String chainName, int numberHotels, String[] phoneNumbers, String[] contactEmails) throws Exception {
        Statement statement;

        Array pn = connect.createArrayOf("text", phoneNumbers);
        Array ce = connect.createArrayOf("text", contactEmails);

        try{
            String query = String.format("INSERT INTO hotelchain VALUES ('%s','%s','%s','%s');", chainName, numberHotels, pn, ce);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Hotel Chain Row Added");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addPosition(Connection connect, String title, double salary, int employeeID){
        Statement statement;

        try{
            String query = String.format("INSERT INTO position VALUES ('%s','%s','%s');", title, salary, employeeID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Position Row Added");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addRenting(Connection connect, int rentingID, Date startDate, Date endDate, String[] specialRequests, int hotelID, int roomNumber, int customerID) throws SQLException{
        Statement statement;

        Array sr = connect.createArrayOf("text", specialRequests);

        try {
            String query = String.format("INSERT INTO renting VALUES ('%s','%s','%s','%s','%s','%s','%s');", rentingID, startDate, endDate, sr, hotelID, roomNumber, customerID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Renting Row Added");

            addArchive(connect, rentingID, "renting", startDate, endDate, sr, hotelID, roomNumber, customerID);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void addRoom(Connection connect, int roomNumber, double price, boolean occupied, String[] amenities, boolean extendable, String view, String[] issues, int capacity, int hotelID) throws SQLException{
        Statement statement;

        Array amen = connect.createArrayOf("text", amenities);
        Array issue = connect.createArrayOf("text", issues);

        try {
            String query = String.format("INSERT INTO room VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s');", roomNumber, price, occupied, amen, extendable, view, issue, capacity, hotelID);
            statement = connect.createStatement();
            statement.executeUpdate(query);
            System.out.println("Room Row Added");
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    
}
