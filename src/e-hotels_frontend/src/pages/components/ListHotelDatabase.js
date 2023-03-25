import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";

const ListHotelDatabase = () => {

    const [hotelData, setHotelData] = useState([]);

    const getHotels = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-hotels");
            const jsonData = await response.json();

            setHotelData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const updateHotel = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-hotel", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getHotels();
        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getHotels();
    }, []);

    console.log(hotelData);

    return (
        <table style={{ width: "80%", overflow: "scroll" }}>
            <thead>
                <tr className="subtitle-text">
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Stars</th>
                    <th>Phone Numbers</th>
                    <th>Contact Emails</th>
                    <th>Hotel Chain</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                {/*<tr className="subtitle-text">
                    <td>ID</td>
                    <td>Name</td>
                    <td>Address</td>
                    <td>Stars</td>
                    <td>Phone Numbers</td>
                    <td>Contact Emails</td>
                    <td>Hotel Chain</td>
                </tr >*/}
                {hotelData.map(hotel => (
                    <tr className="subtitle-text">
                        <td>{hotel.hotelid}</td>
                        <td>{hotel.hotelname}</td>
                        <td>{hotel.hoteladdress}</td>
                        <td>{hotel.stars}</td>
                        <td>{hotel.phonenumbers}</td>
                        <td>{hotel.contactemails}</td>
                        <td>{hotel.chainname}</td>
                        <td><Button
                            variant="contained"
                            color="success"
                            onClick={() => {
                                updateHotel(
                                    {
                                        hotelid: hotel.hotelid,
                                        hotelname: "BINGUS",
                                        hoteladdress: hotel.hoteladdress,
                                        stars: hotel.stars,
                                        phonenumbers: hotel.phonenumbers,
                                        contactemails: hotel.contactemails,
                                        chainname: hotel.chainname
                                    }
                                );
                            }}>
                            Edit
                        </Button></td>
                        <td><Button variant="contained" color="error">Delete</Button></td>
                    </tr >
                ))}
            </tbody>
        </table>
    )
};

export default ListHotelDatabase;