import React, { useEffect, useState } from 'react';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import { Button } from "@mui/material";
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const RoomAvailabilityDialog = (roomData) => {
    const [displayRoomDialog, setDisplayRoomDialog] = useState();
    const [displayBookedDialog, setDisplayBookedDialog] = useState();
    const [avaiableRooms, setAvailableRooms] = useState([]);

    const closeRoomDialog = () => {
        setDisplayRoomDialog(false);
    }

    const closeBookedDialog = () => {
        setDisplayBookedDialog(false);
    }

    const getRooms = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-rooms");
            const jsonData = await response.json();

            setAvailableRooms(jsonData);
        } catch (err) {
            console.log(err.message);
        }
    }

    const addBooking = async (roomNum) => {
        try {

            const specReqArray = [];
            specReqArray.push(localStorage.getItem("bookingSpecialRequests"));

            const bookingInfo = {
                startdate: localStorage.getItem("bookingStartDate"),
                enddate: localStorage.getItem("bookingEndDate"),
                specialrequests: specReqArray,
                hotelid: localStorage.getItem("hotelIndex"),
                roomnumber: roomNum,
                customerid: 321,
            }

            const response = await fetch("http://localhost:8080/insert-bookings", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(bookingInfo)
            });

            closeRoomDialog();

            alert("Successfully booked a room!");

        } catch (err) {
            console.log(err.message);
        }
    }

    const getAvailableRooms = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/search-rooms", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();
            setAvailableRooms(jsonData);
            console.log(avaiableRooms);

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        setDisplayRoomDialog(true);
        getAvailableRooms(roomData);
    }, []);

    return (
        <div>
            <Dialog open={displayRoomDialog} onClose={closeRoomDialog} fullWidth={true} maxWidth={"lg"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Available Rooms</DialogTitle>
                <DialogContent>
                    {avaiableRooms.map((room) => (
                        <div>
                            <p style={{ fontWeight: "bold" }}>
                                Room {room.roomnumber} ---
                                Price: ${room.price},
                                View: {room.view},
                                Capacity: {room.capacity} individual(s),
                                Issues: {room.issues.toString()},
                                Amenities: {room.amenities.toString()}
                            </p>
                            <Button variant='contained' color='success' onClick={() => { addBooking(room.roomnumber) }}>Book Room</Button>
                        </div>
                    ))}

                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeRoomDialog}>Cancel</Button>
                </DialogActions>
            </Dialog>
        </div>
    )
}

export default RoomAvailabilityDialog;
