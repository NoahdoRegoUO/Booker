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

// Get Hotels
app.get("/get-hotels", async (req, res) => {
    try {
        const allHotels = await pool.query(setSchema + "SELECT * FROM Hotel");
        res.json(allHotels[1].rows); // treated as an array because "set" command is treated as first object
    } catch (err) {
        console.error(err);
    }
})


// update



// delete

app.listen(8080, () => {
    console.log("Server started on port 8080.");
})