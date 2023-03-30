import React, { useState, useEffect } from "react";

import ListHotelCards from "./components/ListHotelCards.js"

import './styles/globalStyles.css';

import { Link } from "react-router-dom";
import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import Select from 'react-select';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";
import Dialog from '@mui/material/Dialog';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';

const HomeIcon = (props) => {
    return (
        <SvgIcon {...props}>
            <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z" />
        </SvgIcon>
    );
}



function CustomerHome() {
    const navigate = useNavigate();
    const [infoDisplay, setInfoDisplay] = useState(false);
    const [roomArea, setRoomArea] = useState([]);

    const loadHomePage = () => {
        navigate("/")
    }

    const openInfoDialog = () => {
        setInfoDisplay(true);
    }

    const closeInfoDialog = () => {
        setInfoDisplay(false);
    }

    const getRoomsPerArea = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-available-rooms-per-area");
            const jsonData = await response.json();

            setRoomArea(jsonData);
        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        setInfoDisplay(false);
        getRoomsPerArea();
    }, []);

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
                <Button className="home-button" variant="contained" aria-label="home" color="warning" sx={{ marginLeft: 5 }} onClick={openInfoDialog}>
                    Extra Information
                </Button>
            </div>
            <ListHotelCards></ListHotelCards>
            <Dialog open={infoDisplay} onClose={closeInfoDialog} fullWidth={true} maxWidth={"lg"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Extra Information</DialogTitle>
                <DialogContent>
                    {roomArea.map((location) => (
                        <p style={{ fontWeight: "bold" }}>Total number of rooms in {location.city}: {location.num_available_rooms}</p>
                    ))}
                </DialogContent>
            </Dialog>
        </div>
    );
}

export default CustomerHome;
