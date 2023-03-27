import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListRoomDatabase = () => {

    const [roomData, setRoomData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editPrice, setEditPrice] = useState();
    const [editOccupied, setEditOccupied] = useState();
    const [editAmenities, setEditAmenities] = useState([]);
    const [editExtendable, setEditExtendable] = useState();
    const [editView, setEditView] = useState("");
    const [editIssues, setEditIssues] = useState([]);
    const [editCapacity, setEditCapacity] = useState();
    const [editHotelId, setEditHotelId] = useState();

    const openDialog = (rowID) => {
        setDisplayDialog(true);
        setCurrentID(rowID);
    }

    const openAddDialog = () => {
        setDisplayDialog(true);
    }

    const closeDialog = () => {
        setDisplayDialog(false);
    }

    const submitDialog = (newRoomNumber, newPrice, newOccupied, newAmenities, newExtendable, newView, newIssues, newCapacity, newHotelId) => {
        try {
            newPrice = parseFloat(newPrice);
            newAmenities = newAmenities.split(",");
            newIssues = newIssues.split(",");
            newCapacity = parseInt(newCapacity);
            newHotelId = parseInt(newHotelId);
            const newOccVal = (newOccupied === "true");
            const newExtVal = (newExtendable === "true");

            const roomInfo = {
                roomnumber: newRoomNumber,
                price: newPrice,
                occupied: newOccVal,
                amenities: newAmenities,
                extendable: newExtVal,
                view: newView,
                issues: newIssues,
                capacity: newCapacity,
                hotelid: newHotelId
            }

            if (typeOfEdit === "add") {
                addRoom(roomInfo);
            } else if (typeOfEdit === "edit") {
                updateRoom(roomInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getRooms = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-rooms");
            const jsonData = await response.json();

            setRoomData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addRoom = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-rooms", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRooms();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateRoom = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-room", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRooms();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteRoom = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-room", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getRooms();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getRooms();
        setCurrentID(null);
        setEditPrice();
        setEditOccupied();
        setEditAmenities([]);
        setEditExtendable();
        setEditView("");
        setEditIssues([]);
        setEditCapacity();
        setEditHotelId();
    }, []);

    console.log(roomData);

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
                        <th>Room Number</th>
                        <th>Price</th>
                        <th>Occupied</th>
                        <th>Amenities</th>
                        <th>Extendable</th>
                        <th>View</th>
                        <th>Issues</th>
                        <th>Capacity</th>
                        <th>Hotel ID</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {roomData.map(room => (
                        <tr className="subtitle-text">
                            <td>{room.roomnumber}</td>
                            <td>{room.price}</td>
                            <td>{room.occupied.toString()}</td>
                            <td>{room.amenities.join(", ")}</td>
                            <td>{room.extendable.toString()}</td>
                            <td>{room.view}</td>
                            <td>{room.issues.join(", ")}</td>
                            <td>{room.capacity}</td>
                            <td>{room.hotelid}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(room.roomnumber);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteRoom({ roomnumber: room.roomnumber });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Room</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Price"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editPrice}
                        onChange={e => {
                            setEditPrice(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Occupied (true/false)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editOccupied}
                        onChange={e => {
                            setEditOccupied(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Amenities (separated by commas)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editAmenities}
                        onChange={e => {
                            setEditAmenities(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Extendable (true/false)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editExtendable}
                        onChange={e => {
                            setEditExtendable(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="View (Sea/Mountain)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editView}
                        onChange={e => {
                            setEditView(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Issues (separated by commas)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editIssues}
                        onChange={e => {
                            setEditIssues(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Capacity"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editCapacity}
                        onChange={e => {
                            setEditCapacity(e.target.value)
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
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editPrice, editOccupied, editAmenities, editExtendable, editView, editIssues, editCapacity, editHotelId) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListRoomDatabase;