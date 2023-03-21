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


// update



// delete

app.listen(8080, () => {
    console.log("Server started on port 8080.");
})