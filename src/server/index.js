const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

// Default queries
const setSchema = "SET SEARCH_PATH = \'ehotels_db\'; \n";

// middleware
app.use(cors());
app.use(express.json());

// ROUTES //

// Set Schema
app.post("/set-schema", async (req, res) => {
    // set pool schema
    try {
        const newTable = await pool.query("SET SEARCH_PATH = \'ehotels_db\'");
        res.json(newTable);
    } catch (err) {
        console.error(err);
    }
});

// Create Table
app.post("/testtable", async (req, res) => {
    try {
        const newTable = await pool.query(setSchema + "CREATE TABLE Test (test TEXT, number INT,PRIMARY KEY(test))");
        res.json(newTable);
    } catch (err) {
        console.error(err);
    }
});

// Get Archive
app.get("/get-archives", async (req, res) => {
    try {
        await pool.query(setSchema);
        const archiveData = await pool.query("SELECT * FROM archive");
        res.json(archiveData.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Bookings
app.get("/get-bookings", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allBookings = await pool.query("SELECT * FROM booking");
        res.json(allBookings.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Central Offices
app.get("/get-central-offices", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allCentralOffices = await pool.query("SELECT * FROM centraloffice");
        res.json(allCentralOffices.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Customers
app.get("/get-customers", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allCustomers = await pool.query("SELECT * FROM customer");
        res.json(allCustomers.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Employees
app.get("/get-employees", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allEmployees = await pool.query("SELECT * FROM employee");
        res.json(allEmployees.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Hotels
app.get("/get-hotels", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allHotels = await pool.query("SELECT * FROM Hotel");
        res.json(allHotels.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Hotel Chains
app.get("/get-hotel-chains", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allHotelChains = await pool.query("SELECT * FROM hotelchain");
        res.json(allHotelChains.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Positions
app.get("/get-positions", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allPositions = await pool.query("SELECT * FROM position");
        res.json(allPositions.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Rentings
app.get("/get-rentings", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allRentings = await pool.query("SELECT * FROM renting");
        res.json(allRentings.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Get Rooms
app.get("/get-rooms", async (req, res) => {
    try {
        await pool.query(setSchema);
        const allRooms = await pool.query("SELECT * FROM room");
        res.json(allRooms.rows); 
    } catch (err) {
        console.error(err);
    }
})

// Search Bookings
app.get("/search-bookings", async (req, res) => {
    let { startdate, enddate, specialrequests, hotelid, roomnumber, customerid } = req.query;
  
    let counter = 1;
  
    let query = {
      text: "SELECT * FROM booking WHERE TRUE",
      values: [],
    };
  
    if (startdate && enddate) {
      query.text += " AND startdate <= $" + counter.toString() + " AND enddate >= $" + (counter + 1).toString();
      query.values.push(startdate, enddate);
      counter += 2;
    }
  
    if (specialRequestsTest && Array.isArray(specialRequestsTest)) {
      const specialRequestsArray = `{${specialRequests.join(',')}}`;
  
      query.text += " AND specialrequests @> $" + counter.toString();
      query.values.push(specialRequestsArray);
      counter += 1;
    }
  
    if (hotelid) {
      query.text += " AND hotelid = $" + counter.toString();
      query.values.push(hotelid);
      counter += 1;
    }
  
    if (roomnumber) {
      query.text += " AND roomnumber = $" + counter.toString();
      query.values.push(roomnumber);
      counter += 1;
    }
  
    if (customerid) {
      query.text += " AND customerid = $" + counter.toString();
      query.values.push(customerid);
      counter += 1;
    }
  
    console.log(query);
  
    try {
      await pool.query(setSchema);
      const result = await pool.query(query);
      res.json(result.rows);
    } catch (err) {
      console.error(err);
    }
  })


// Search Customers
app.get("/search-customers", async (req, res) => {
    let { customerid, sin, fullname, customeraddress, age, registrationdate, creditcardnumber } = req.query;

    let counter = 1;

    let query = {
        text: "SELECT * FROM customer WHERE true",
        values: [],
    };

    if (customerid) {
        query.text += " AND customerid = $" + counter.toString();
        query.values.push(customerid);
        counter += 1;
    }

    if (sin) {
        query.text += " AND sin = $" + counter.toString();
        query.values.push(sin);
        counter += 1;
    }

    if (fullname) {
        query.text += " AND fullname ILIKE $" + counter.toString();
        query.values.push('%' + fullname + '%');
        counter += 1;
    }

    if (customeraddress) {
        query.text += " AND customeraddress ILIKE $" + counter.toString();
        query.values.push('%' + customeraddress + '%');
        counter += 1;
    }

    if (age) {
        query.text += " AND age >= $" + counter.toString();
        query.values.push(age);
        counter += 1;
    }

    if (registrationdate) {
        query.text += " AND registrationdate >= $" + counter.toString();
        query.values.push(registrationdate);
        counter += 1;
    }

    if (creditcardnumber) {
        query.text += " AND creditcardnumber = $" + counter.toString();
        query.values.push(creditcardnumber);
        counter += 1;
    }

    console.log(query);

    try {
        await pool.query(setSchema);
        const result = await pool.query(query);
        res.json(result.rows);
    } catch (err) {
        console.error(err);
    }
})


app.get("/search-employees", async (req, res) => {
    let {fullname, employeeaddress, age, hotelid} = req.query;

    // test search
    employeeaddress = "Ottawa";
    age = 44;
    hotelid = 2;

    let counter = 1;

    let query = {
        text: "SELECT * FROM employee",
        values: [],
    };

    if(fullname){
        query.text += " WHERE fullname = $" + counter.toString();
        query.values.push(fullname);
        counter += 1;
    }

    if(employeeaddress){
        if(counter === 1){
            query.text += " WHERE employeeaddress ILIKE $" + counter.toString();
        } else {
            query.text += " AND employeeaddress ILIKE $" + counter.toString();
        }
        query.values.push('%' + employeeaddress + '%');
        counter += 1;
    }

    if(age){
        if (counter == 1) {
            query.text += " WHERE";
        } else {
            query.text += " AND";
        }
        query.text += " age = $" + counter.toString();
        query.values.push(age);
        counter += 1;
    }

    if(hotelid){
        if (counter == 1) {
            query.text += " WHERE";
        } else {
            query.text += " AND";
        }
        query.text += " hotelid = $" + counter.toString();
        query.values.push(hotelid);
        counter += 1;
    }

    console.log(query);

    try {
        await pool.query(setSchema);
        const result = await pool.query(query);
        res.json(result.rows);
    } catch (err) {
        console.error(err);
    }
})


// Search Hotels
app.get("/search-hotels", async (req, res) => {
    let {hotelname, hoteladdress, stars, phonenumbers, contactemails, chainname} = req.query;

    // test search
    stars = 3;
    // chainname = "Adfaces";
    hoteladdress = "Ottawa";

    let counter = 1;

    let query = {
        text: "SELECT * FROM hotel",
        values: [],
    };

    if(hotelname){
        query.text += " WHERE hotelname = $" + counter.toString();
        query.values.push(hotelname);
        counter += 1;
    }

    if(hoteladdress){
        if(counter === 1){
            query.text += " WHERE hoteladdress ILIKE $" + counter.toString();
        } else {
            query.text += " AND hoteladdress ILIKE $" + counter.toString();
        }
        query.values.push('%' + hoteladdress + '%');
        counter += 1;
    }

    if(stars){
        if(counter === 1){
            query.text += " WHERE stars >= $" + counter.toString();
        } else {
            query.text += " AND stars >= $" + counter.toString();
        }
        query.values.push(stars);
        counter += 1;
    }

    if(chainname){
        if(counter === 1){
            query.text += " WHERE chainname = $" + counter.toString();
        } else {
            query.text += " AND chainname = $" + counter.toString();
        }
        query.values.push(chainname);
        counter += 1;
    }

    console.log(query);

    try {
        await pool.query(setSchema);
        const result = await pool.query(query);
        res.json(result.rows);
    } catch (err) {
        console.error(err);
    }
})

// Search Rooms
app.get("/search-rooms", async (req, res) => {
    let {roomnumber, price, occupied, amenities, extendable, view, issues, capacity, hotelid} = req.query;

    let query = {
        text: "SELECT * FROM room WHERE occupied = false",
        values: [],
    };

    if(price){
        query.text += " AND price <= $" + counter.toString();
        query.values.push(price);
        counter += 1;
    }

    if(amenities && Array.isArray(amenities)){
        const amenitiesArray = `{${amenities.join(',')}}`;

        query.text += ' AND amenities @> $' + counter.toString();
        query.values.push(amenitiesArray);
        counter += 1;
    }

    if(extendable){
        query.text += ' AND extendable = $' + counter.toString();
        query.values.push(extendable === 'true');
        counter += 1;
    }

    if(view){
        query.text += " AND view = $" + counter.toString();
        query.values.push(view);
        counter += 1;
    }

    if(issues){
        query.text += " AND issues = $" + counter.toString();
        query.values.push(issues);
        counter += 1;
    } 

    if(capacity){
        query.text += " AND capacity >= $" + counter.toString();
        query.values.push(capacity);
        counter += 1;
    }

    if(hotelid){
        query.text += " AND hotelid = $" + counter.toString();
        query.values.push(hotelid);
        counter += 1;
    } 

    console.log(query);

    try {
        await pool.query(setSchema);
        const result = await pool.query(query);
        res.json(result.rows);
    } catch (err) {
        console.error(err);
    }
})



// update



// delete

app.listen(8080, () => {
    console.log("Server started on port 8080.");
})