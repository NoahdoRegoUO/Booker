package src.db_connection;

import java.text.DecimalFormat;

public class generate_rooms_script {
    public static void main(String[] args) {
        String query = "";

        for (int i = 0; i < 220; i++) {

            int roomnumber = i + 1;

            double price = 1.00;

            int capacity = (i % 5) + 1;

            boolean occupied = false;

            String amenities = "";

            boolean extendable = true;

            String view = "";

            String issues = "ARRAY['None']";

            if (capacity == 1) {
                amenities = "ARRAY['None']";
                extendable = false;
                price = Math.random() * 50 + 50;

            } else if (capacity == 2) {
                amenities = "ARRAY['Air Conditioning']";
                extendable = false;
                price = Math.random() * 50 + 100;

            } else if (capacity == 3) {
                amenities = "ARRAY['Air Conditioning', 'Television']";
                price = Math.random() * 100 + 100;

            } else if (capacity == 4) {
                amenities = "ARRAY['Air Conditioning', 'Television', 'Microwave']";
                price = Math.random() * 50 + 200;

            } else if (capacity == 5) {
                amenities = "ARRAY['Air Conditioning', 'Television', 'Microwave', 'Fridge']";
                price = Math.random() * 50 + 300;
            }

            DecimalFormat df = new DecimalFormat("#.##");
            price = Double.valueOf(df.format(price));

            int determineView = (int) (Math.random() * 2 + 1);

            if (determineView == 2) {
                view = "'Sea'";
            } else if (determineView == 1) {
                view = "'Mountain'";
            }

            int determineIssues = (int) (Math.random() * 50 + 1);
            if (determineIssues >= 45) {
                issues = "ARRAY['Slight Damage']";
            }

            int hotelid = i / 5 + 1;

            query = "INSERT INTO room(roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid) VALUES ("
                    + roomnumber + ", " + price + ", false, " + amenities + ", " + extendable + ", " + view + ", "
                    + issues + ", " + capacity + ", " + hotelid + ");";

            System.out.println(query);
        }

    }
}
