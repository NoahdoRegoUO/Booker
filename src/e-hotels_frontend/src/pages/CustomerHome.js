import React, { useState } from "react";

import ListHotels from "./components/ListHotels.js"

import './styles/CustomerHome.css';
import './styles/globalStyles.css';

import { Link } from "react-router-dom";
import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import Select from 'react-select';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";


const locationOptions = [
    { value: 'Ottawa', label: 'Ottawa' },
    { value: 'Toronto', label: 'Toronto' },
    { value: 'Montreal', label: 'Montreal' },
]

const starOptions = [
    { value: 1, label: '1 Star' },
    { value: 2, label: '2 Stars' },
    { value: 3, label: '3 Stars' },
    { value: 4, label: '4 Stars' },
    { value: 5, label: '5 Stars' }
]

const hotelChainOptions = [
    { value: 'Adfaces', label: 'Adfaces' },
    { value: 'Trihotels', label: 'Trihotels' },
    { value: 'Macos', label: 'Macos' },
    { value: 'JetRocks', label: 'JetRocks' },
    { value: 'Haiz', label: 'Haiz' },
]

const numRoomsOptions = [
    { value: '<100', label: 'less than 100 rooms' },
    { value: '100-250', label: '100-250 rooms' },
    { value: '250-500', label: '250-500 rooms' },
    { value: '>500', label: 'over 500 rooms' },
]

const roomCapacityOptions = [
    { value: '1', label: '1 person' },
    { value: '2-4', label: '2-4 people' },
    { value: '>4', label: 'more than 4 people' },
]

const priceOptions = [
    { value: '$', label: '$' },
    { value: '$$', label: '$$' },
    { value: '$$$', label: '$$$' },
]

const selectCustomStyles = {
    option: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        backgroundColor: "#f2f2f2",
        fontSize: "2vmin",
    }),
    control: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        backgroundColor: "#f2f2f2",
        padding: "5px",
        border: "none",
        boxShadow: "none",
        fontSize: "2vmin",
    }),
    singleValue: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        fontSize: "2vmin"
    }),
};

const HomeIcon = (props) => {
    return (
        <SvgIcon {...props}>
            <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z" />
        </SvgIcon>
    );
}

function CustomerHome() {
    const navigate = useNavigate();

    const loadHomePage = () => {
        navigate("/")
    }

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
            </div>
            <p className="title-text">Search Hotels</p>
            <div id="search-info">
                <p className="subtitle-text" id="search-title">Hotel Information</p>
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Location"
                    options={locationOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Stars"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Chain"
                    options={hotelChainOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
            </div>
            <div id="search-info">
                <p className="subtitle-text" id="search-title">Room Information</p>
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Total Number of Rooms"
                    options={numRoomsOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Room Capacity"
                    options={roomCapacityOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Price Range"
                    options={priceOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
            </div>
            <ListHotels></ListHotels>
        </div>
    );
}

export default CustomerHome;
