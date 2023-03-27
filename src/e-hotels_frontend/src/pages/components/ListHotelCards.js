import React, { useEffect, useState } from "react";
import Grid from '@mui/material/Grid';
import Card from "./Card";
import Box from "@mui/material/Box";

import '../styles/globalStyles.css';

import hotelImg from "../images/hotel2.jpg"

const ListHotelCards = () => {
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

    useEffect(() => {
        getHotels();
    }, []);

    console.log(hotelData);

    return (
        <Box sx={{
            flexGrow: 1,
            alignItems: "center",
            justifyContent: "center",
            margin: 0
        }}>
            <Grid container spacing={2}>
                {hotelData.map((hotel) => (
                    <Grid item xs={6} md={3}>
                        <Card
                            image={hotelImg}
                            title={hotel.hotelname}
                            description={`Address: ${hotel.hoteladdress}`}
                            description2={`Stars: ${hotel.stars} `}
                            description3={`Hotel Chain: ${hotel.chainname}`}
                        />
                    </Grid>
                ))}
            </Grid>
        </Box>
    )
};

export default ListHotelCards;