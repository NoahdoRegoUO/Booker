package src.db_connection;

public class DBConnection {

    public static void main(String[] args) {
        DBFunctions db = new DBFunctions();
        db.connectToDB("ehotels_db", "postgres", "gumbly456!");
    }
}