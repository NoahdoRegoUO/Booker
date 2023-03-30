import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListBookingDatabase = () => {

    const [bookingData, setBookingData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editStartDate, setEditStartDate] = useState("");
    const [editEndDate, setEditEndDate] = useState("");
    const [editSpecialRequests, setEditSpecialRequests] = useState([]);
    const [editHotelId, setEditHotelId] = useState();
    const [editRoomNumber, setEditRoomNumber] = useState();
    const [editCustomerId, setEditCustomerId] = useState();

    const openDialog = (rowID) => {
        if (rowID !== null){
            setDisplayDialog(true);
            setCurrentID(rowID);
        }
    }

    const openAddDialog = () => {
        setDisplayDialog(true);
    }

    const closeDialog = () => {
        setDisplayDialog(false);
    }

    const submitDialog = (newBookingid, newStartDate, newEndDate, newSpecialRequests, newHotelId, newRoomNumber, newCustomerId) => {
        try {
            newBookingid = parseInt(newBookingid);
            newSpecialRequests = newSpecialRequests.split(",");
            newHotelId = parseInt(newHotelId);
            newRoomNumber = parseInt(newRoomNumber);
            newCustomerId = parseInt(newCustomerId);

            const bookingInfo = {
                bookingid: newBookingid,
                startdate: newStartDate,
                enddate: newEndDate,
                specialrequests: newSpecialRequests,
                hotelid: newHotelId,
                roomnumber: newRoomNumber,
                customerid: newCustomerId
            }

            if (typeOfEdit === "add") {
                addBooking(bookingInfo);
            } else if (typeOfEdit === "edit") {
                updateBooking(bookingInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getBookings = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-bookings");
            const jsonData = await response.json();

            setBookingData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addBooking = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-bookings", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getBookings();

        } catch (err) {
            console.log(err.message);
        }

        const bookingType = "booking";

        const data2 = {
            bookingid: data.bookingid,
            archivetype: bookingType,
            startdate: data.startdate,
            enddate: data.enddate,
            specialrequests: data.specialrequests,
            hotelid: data.hotelid,
            roomnumber: data.roomnumber,
            customerid: data.customerid
        }

        try {
            const response = await fetch("http://localhost:8080/insert-archives", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data2)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getBookings();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateBooking = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-booking", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getBookings();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteBooking = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-booking", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getBookings();

        } catch (err) {
            console.log(err.message);
        }
    }

    const convertBooking = async (data) => {
        
        try {
            const response = await fetch("http://localhost:8080/insert-renting-from-booking", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            console.log("here");

            const jsonData = await response.json();

            console.log(jsonData);
            getBookings();
        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getBookings();
        setCurrentID(null);
        setEditStartDate("");
        setEditEndDate("");
        setEditSpecialRequests([]);
        setEditHotelId();
        setEditRoomNumber();
        setEditCustomerId();
    }, []);

    console.log(bookingData);

    return (
        <>
            <Button
                variant="contained"
                color="success"
                onClick={() => {
                    setTypeOfEdit("add");
                    openAddDialog();
                }}>Add Data</Button>
            <table style={{ width: "80%", overflow: "scroll" }}>
                <thead>
                    <tr className="subtitle-text">
                        <th>Booking ID</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Special Requests</th>
                        <th>Hotel ID</th>
                        <th>Room Number</th>
                        <th>Customer ID</th>
                        <th>Edit</th>
                        <th>Convert To Renting</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {bookingData.map(booking => (
                        <tr className="subtitle-text">
                            <td>{booking.bookingid}</td>
                            <td>{booking.startdate}</td>
                            <td>{booking.enddate}</td>
                            <td>{booking.specialrequests.join(", ")}</td>
                            <td>{booking.hotelid}</td>
                            <td>{booking.roomnumber}</td>
                            <td>{booking.customerid}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(booking.bookingid);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    convertBooking({ bookingid: booking.bookingid });
                                    // window.location.reload();
                                    // console.log(2);
                                }}>
                                Convert
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteBooking({ bookingid: booking.bookingid });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Booking</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Start Date (format: YYYY-MM-DD)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editStartDate}
                        onChange={e => {
                            setEditStartDate(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="End Date (format: YYYY-MM-DD)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editEndDate}
                        onChange={e => {
                            setEditEndDate(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Special Requests (separated by commas)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editSpecialRequests}
                        onChange={e => {
                            setEditSpecialRequests(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Hotel ID"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editHotelId}
                        onChange={e => {
                            setEditHotelId(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Room Number"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editRoomNumber}
                        onChange={e => {
                            setEditRoomNumber(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Customer ID"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editCustomerId}
                        onChange={e => {
                            setEditCustomerId(e.target.value)
                        }}
                    />
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editStartDate, editEndDate, editSpecialRequests, editHotelId, editRoomNumber, editCustomerId) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListBookingDatabase;