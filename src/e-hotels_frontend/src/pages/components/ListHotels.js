import React from "react";
import Card from "./Card";

import '../styles/globalStyles.css';

import hotelImg from "../images/hotel2.jpg"

const ListHotels = () => {
    return (
        <div>
            <Card
                image={hotelImg}
                title="Hotel"
                description="..."
            />
        </div>
    )
};

export default ListHotels;