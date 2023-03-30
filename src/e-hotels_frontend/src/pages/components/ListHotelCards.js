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
import '../styles/ListHotelCards.css';

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

    const [hotelIndex, setHotelIndex] = useState();
    const [startDate, setStartDate] = useState("");
    const [endDate, setEndDate] = useState("");
    const [specialRequests, setSpecialRequests] = useState("");
    const [roomCapacity, setRoomCapacity] = useState(null);
    const [roomView, setRoomView] = useState(null);
    const [roomAmenities, setRoomAmenities] = useState(null);

    const [roomData, setRoomData] = useState([]);

    const [selectedLocation, setSelectedLocation] = useState();
    const [selectedStars, setSelectedStars] = useState();
    const [selectedHotelChain, setSelectedHotelChain] = useState();

    const locationOptions = [
        { value: 'Ottawa', label: 'Ottawa' },
        { value: 'Toronto', label: 'Toronto' },
        { value: 'Montreal', label: 'Montreal' },
    ]

    const starOptions = [
        { value: 1, label: '+1 Star' },
        { value: 2, label: '+2 Stars' },
        { value: 3, label: '+3 Stars' },
        { value: 4, label: '+4 Stars' },
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

    const amenityOptions = [
        { value: 'Air Conditioning', label: 'Air Conditioning' },
        { value: 'Television', label: 'TV' },
        { value: 'Microwave', label: 'Microwave' },
        { value: 'Fridge', label: 'Fridge' }
    ]

    const viewOptions = [
        { value: 'Mountain', label: 'Mountain' },
        { value: 'Sea', label: 'Sea' },
        { value: null, label: 'Either' }
    ]

    const capacityOptions = [
        { value: 1, label: '1' },
        { value: 2, label: '2' },
        { value: 3, label: '3' },
        { value: 4, label: '4' },
        { value: 5, label: '5' },
    ]

    const openSearchDialog = (index) => {
        setDisplaySearchDialog(true);
        setHotelIndex(index);
        localStorage.setItem("hotelIndex", index);
    }

    const closeSearchDialog = () => {
        setDisplaySearchDialog(false);
    }

    const submitSearchDialog = () => {
        const amenitiesArray = roomAmenities ? roomAmenities.map(amenityOptions => amenityOptions.value) : null;
        const viewValue = roomView ? roomView.value : null;
        const capacityValue = roomCapacity ? roomCapacity.value : null;

        localStorage.setItem("bookingStartDate", startDate);
        localStorage.setItem("bookingEndDate", endDate);
        localStorage.setItem("bookingSpecialRequests", specialRequests);

        const newRoomData = {
            occupied: false,
            hotelid: hotelIndex,
            amenities: amenitiesArray,
            capacity: capacityValue,
            view: viewValue,
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

    const getFilteredHotels = async () => {
        const locationValue = selectedLocation ? selectedLocation.value : null;
        const starsValue = selectedStars ? selectedStars.value : null;
        const chainValue = selectedHotelChain ? selectedHotelChain.value : null;

        const data = {
            hotelname: null,
            hoteladdress: locationValue,
            stars: starsValue,
            chainname: chainValue
        }

        try {
            const response = await fetch("http://localhost:8080/search-hotels", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();
            setHotelData(jsonData);

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getHotels();
    }, []);

    console.log(hotelData);

    return (
        <div style={{ alignItems: "center", justifyContent: "center" }}>
            <p className="title-text">Search Hotels</p>
            <div>
                <div id="search-info">
                    <p className="subtitle-text" id="search-title">Hotel Information</p>
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        placeholder="Location"
                        options={locationOptions}
                        value={selectedLocation}
                        onChange={setSelectedLocation}
                        styles={selectCustomStyles}
                        isSearchable={false}
                    />
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        placeholder="Stars"
                        options={starOptions}
                        value={selectedStars}
                        onChange={setSelectedStars}
                        styles={selectCustomStyles}
                        isSearchable={false}
                    />
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        placeholder="Chain"
                        options={hotelChainOptions}
                        value={selectedHotelChain}
                        onChange={setSelectedHotelChain}
                        styles={selectCustomStyles}
                        isSearchable={false}
                    />
                    <Select
                        id="select-dropdown"
                        defaultValue={null}
                        placeholder="Total Number of Rooms"
                        options={numRoomsOptions}
                        styles={selectCustomStyles}
                        isSearchable={false}
                    />
                </div>
            </div>
            <Button variant="contained" color="success" sx={{ margin: 2 }} onClick={getFilteredHotels}>Filter Hotels</Button>
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
                                action={() => { openSearchDialog(hotel.hotelid) }}
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
                            value={roomAmenities}
                            onChange={setRoomAmenities}
                            styles={selectCustomStyles}
                        />
                        <Select
                            id="select-dropdown"
                            defaultValue={null}
                            placeholder="Room View"
                            options={viewOptions}
                            value={roomView}
                            onChange={setRoomView}
                            styles={selectCustomStyles}
                        />
                        <Select
                            id="select-dropdown"
                            defaultValue={null}
                            placeholder="Room Capacity"
                            options={capacityOptions}
                            value={roomCapacity}
                            onChange={setRoomCapacity}
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
        </div>
    )
};

export default ListHotelCards;