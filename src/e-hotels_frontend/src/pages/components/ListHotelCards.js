import React, { useEffect, useState } from "react";
import Grid from '@mui/material/Grid';
import Card from "./Card";
import Box from "@mui/material/Box";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Select from 'react-select';

import '../styles/globalStyles.css';

import hotelImg from "../images/hotel2.jpg"
import RoomAvailabilityDialog from "./RoomAvailabilityDialog";

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

const ListHotelCards = () => {
    const [hotelData, setHotelData] = useState([]);
    const [displaySearchDialog, setDisplaySearchDialog] = useState(false);

    const [startDate, setStartDate] = useState("");
    const [endDate, setEndDate] = useState("");
    const [specialRequests, setSpecialRequests] = useState("");
    const [roomCapacity, setRoomCapacity] = useState();
    const [roomView, setRoomView] = useState("");
    const [amenities, setAmenities] = useState([]);

    const [roomData, setRoomData] = useState([]);

    const amenityOptions = [
        { value: 'ac', label: 'Air Conditioning' },
        { value: 'tv', label: 'TV' },
        { value: 'mw', label: 'Microwave' },
        { value: 'fg', label: 'Fridge' }
    ]

    const viewOptions = [
        { value: 'mountain', label: 'Mountain' },
        { value: 'sea', label: 'Sea' },
    ]

    const capacityOptions = [
        { value: 1, label: '1' },
        { value: 2, label: '2' },
        { value: 3, label: '3' },
        { value: 4, label: '4' },
        { value: 5, label: '5' },
    ]

    const openSearchDialog = () => {
        setDisplaySearchDialog(true);
    }

    const closeSearchDialog = () => {
        setDisplaySearchDialog(false);
    }

    const handleAmenitySelect = e => {
        setAmenities(e.value);
    };

    const handleViewSelect = e => {
        setRoomView(e.value);
    }

    const handleCapacitySelect = e => {
        setRoomCapacity(e.value);
    }

    const submitSearchDialog = () => {
        const newRoomData = {
            amenites: amenities,
            roomView: roomView,
            roomCapacity: roomCapacity
        };
        setRoomData([...roomData, newRoomData]);
        setDisplaySearchDialog(false);
    }

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
                            action={() => { openSearchDialog() }}
                        />
                    </Grid>
                ))}
            </Grid>
            <Dialog open={displaySearchDialog} onClose={closeSearchDialog} fullWidth={true} maxWidth={"lg"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Book a Room</DialogTitle>
                <DialogContent>
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        isMulti
                        placeholder="Amenities"
                        options={amenityOptions}
                        onChange={handleAmenitySelect}
                        styles={selectCustomStyles}
                    />
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        isMulti
                        placeholder="Room View"
                        options={viewOptions}
                        onChange={handleViewSelect}
                        styles={selectCustomStyles}
                    />
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        isMulti
                        placeholder="Room Capacity"
                        options={capacityOptions}
                        onChange={handleViewSelect}
                        styles={selectCustomStyles}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Start Date (YYYY-MM-DD)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={startDate}
                        onChange={e => {
                            setStartDate(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="End Date (YYYY-MM-DD)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={endDate}
                        onChange={e => {
                            setEndDate(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Special Requests"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={specialRequests}
                        onChange={e => {
                            setSpecialRequests(e.target.value)
                        }}
                    />
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeSearchDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={submitSearchDialog}>Check Availability</Button>
                </DialogActions>
            </Dialog>
            {roomData.map((filteredData) => (<RoomAvailabilityDialog roomData={filteredData} />))}
        </Box>
    )
};

export default ListHotelCards;