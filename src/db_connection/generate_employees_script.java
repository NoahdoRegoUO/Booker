package src.db_connection;
// NOTE: THIS CODE WILL NOT WORK ON IT'S OWN, IT MUST BE ALONGSIDE A MAVEN PROJECT THAT IMPLEMENTS THE LIBRARY.

// FAKER LIBRARY -> https://github.com/DiUS/java-faker

import com.github.javafaker.Faker;
import java.lang.Math;

public class generate_employees_script {
    public static void main(String[] args) {
        String query = "";

        for (int i = 0; i < 220; i++) {
            int employeeid = i + 1;

            // String position = "'Guest Services'";
            //
            // // get a manager for the hotel
            // if((i % 5) + 1 == 1){
            // position = "'Manager'";
            // }

            int sin = 100000000 + (int) (Math.random() * 900000000);

            Faker faker = new Faker();

            String fullname = "";

            String employeeaddress = "";

            fullname = "'" + faker.name().firstName() + " " + faker.name().lastName() + "'";

            employeeaddress = "'" + faker.address().streetAddress();

            if (i < 85) {
                employeeaddress = employeeaddress + ", Ottawa, Ontario" + "'";
            } else {
                employeeaddress = employeeaddress + ", Toronto, Ontario" + "'";
            }

            // generate age between 16 and 70
            int age = (int) (Math.random() * 54 + 16);

            int hotelid = i / 5 + 1;

            query = "INSERT INTO employee(employeeid, sin, fullname, employeeaddress, age, hotelid) VALUES ("
                    + employeeid + ", " + sin + ", " + fullname + ", " + employeeaddress + ", " + age + ", " + hotelid
                    + ");";

            System.out.println(query);
        }
    }
}
