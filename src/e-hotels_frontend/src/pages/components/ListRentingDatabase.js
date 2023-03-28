import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListRentingDatabase = () => {

    const [rentingData, setRentingData] = useState([]);
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

    const submitDialog = (newRentingid, newStartDate, newEndDate, newSpecialRequests, newHotelId, newRoomNumber, newCustomerId) => {
        try {
            newRentingid = parseInt(newRentingid);
            newSpecialRequests = newSpecialRequests.split(",");
            newHotelId = parseInt(newHotelId);
            newRoomNumber = parseInt(newRoomNumber);
            newCustomerId = parseInt(newCustomerId);

            const rentingInfo = {
                rentingid: newRentingid,
                startdate: newStartDate,
                enddate: newEndDate,
                specialrequests: newSpecialRequests,
                hotelid: newHotelId,
                roomnumber: newRoomNumber,
                customerid: newCustomerId
            }

            if (typeOfEdit === "add") {
                addRenting(rentingInfo);
            } else if (typeOfEdit === "edit") {
                updateRenting(rentingInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getRentings = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-rentings");
            const jsonData = await response.json();

            setRentingData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addRenting = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-rentings", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRentings();

        } catch (err) {
            console.log(err.message);
        }

        const rentingType = "renting";

        const data2 = {
            bookingid: data.rentingid,
            archivetype: rentingType,
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
            getRentings();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateRenting = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-renting", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRentings();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteRenting = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-renting", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRentings();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getRentings();
        setCurrentID(null);
        setEditStartDate("");
        setEditEndDate("");
        setEditSpecialRequests([]);
        setEditHotelId();
        setEditRoomNumber();
        setEditCustomerId();
    }, []);

    console.log(rentingData);

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
                        <th>Renting ID</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Special Requests</th>
                        <th>Hotel ID</th>
                        <th>Room Number</th>
                        <th>Customer ID</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {rentingData.map(renting => (
                        <tr className="subtitle-text">
                            <td>{renting.rentingid}</td>
                            <td>{renting.startdate}</td>
                            <td>{renting.enddate}</td>
                            <td>{renting.specialrequests.join(", ")}</td>
                            <td>{renting.hotelid}</td>
                            <td>{renting.roomnumber}</td>
                            <td>{renting.customerid}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(renting.rentingid);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteRenting({ rentingid: renting.rentingid });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Renting</DialogTitle>
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

export default ListRentingDatabase;