import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListHotelDatabase = () => {

    const [hotelData, setHotelData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [currentID, setCurrentID] = useState(null);
    const [editName, setEditName] = useState("");
    const [editAddress, setEditAddress] = useState("");
    const [editStars, setEditStars] = useState(3);
    const [editPhoneNums, setEditPhoneNums] = useState([]);
    const [editEmails, setEditEmails] = useState([]);
    const [editChainName, setEditChainName] = useState("");

    const openDialog = (rowID) => {
        setDisplayDialog(true);
        setCurrentID(rowID);
    }

    const closeDialog = () => {
        setDisplayDialog(false);
    }

    const submitDialog = (newHotelid, newHotelName, newHoteladdress, newStars, newPhonenumbers, newContactemails, newChainname) => {
        try {
            newHotelid = parseInt(newHotelid);
            newStars = parseInt(newStars);
            newPhonenumbers = newPhonenumbers.split(",");
            newContactemails = newContactemails.split(",");

            const hotelInfo = {
                hotelid: newHotelid,
                hotelname: newHotelName,
                hoteladdress: newHoteladdress,
                stars: newStars,
                phonenumbers: newPhonenumbers,
                contactemails: newContactemails,
                chainname: newChainname
            }
            updateHotel(hotelInfo);
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
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

    const updateHotel = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-hotel", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getHotels();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getHotels();
        setCurrentID(null);
        setEditName("");
        setEditAddress("");
        setEditStars(3);
        setEditPhoneNums([]);
        setEditEmails([]);
        setEditChainName("");
    }, []);

    console.log(hotelData);

    return (
        <>
            <table style={{ width: "80%", overflow: "scroll" }}>
                <thead>
                    <tr className="subtitle-text">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Stars</th>
                        <th>Phone Numbers</th>
                        <th>Contact Emails</th>
                        <th>Hotel Chain</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {hotelData.map(hotel => (
                        <tr className="subtitle-text">
                            <td>{hotel.hotelid}</td>
                            <td>{hotel.hotelname}</td>
                            <td>{hotel.hoteladdress}</td>
                            <td>{hotel.stars}</td>
                            <td>{hotel.phonenumbers.join(" ")}</td>
                            <td>{hotel.contactemails.join(" ")}</td>
                            <td>{hotel.chainname}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    openDialog(hotel.hotelid)
                                }}>
                                Edit
                            </Button></td>
                            <td><Button variant="contained" color="error">Delete</Button></td>
                        </tr >
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Hotel</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Hotel Name"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editName}
                        onChange={e => {
                            setEditName(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Address"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editAddress}
                        onChange={e => {
                            setEditAddress(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Number of Stars"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editStars}
                        onChange={e => {
                            setEditStars(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Phone Numbers (separated by commas)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editPhoneNums}
                        onChange={e => {
                            setEditPhoneNums(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Contact Emails (separated by commas)"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editEmails}
                        onChange={e => {
                            setEditEmails(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Hotel Chain Name"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editChainName}
                        onChange={e => {
                            setEditChainName(e.target.value)
                        }}
                    />
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editName, editAddress, editStars, editPhoneNums, editEmails, editChainName) }}>Edit</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListHotelDatabase;