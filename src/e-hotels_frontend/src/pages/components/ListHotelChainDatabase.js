import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListHotelChainDatabase = () => {

    const [hotelChainData, setHotelChainData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editChainName, setEditChainName] = useState("");
    const [editPhoneNums, setEditPhoneNums] = useState([]);
    const [editEmails, setEditEmails] = useState([]);

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

    const submitDialog = (newChainName, newPhonenumbers, newContactemails) => {
        try {
            newPhonenumbers = newPhonenumbers.split(",");
            newContactemails = newContactemails.split(",");
            const numberhotels = 9;
            
            console.log(currentID);
            console.log(newChainName);
            const hotelChainInfo = {
                oChainName: currentID,
                nChainName: newChainName,
                numberhotels: numberhotels,
                phonenumbers: newPhonenumbers,
                contactemails: newContactemails
            }

            const addHotelChainInfo = {
                nChainName: newChainName,
                numberhotels: 0,
                phonenumbers: newPhonenumbers,
                contactemails: newContactemails
            }

            if (typeOfEdit === "add") {
                addHotelChain(addHotelChainInfo);
            } else if (typeOfEdit === "edit") {
                updateHotelChain(hotelChainInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getHotelChains = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-hotel-chains");
            const jsonData = await response.json();

            setHotelChainData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addHotelChain = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-hotelchains", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getHotelChains();
        } catch (err) {
            console.log(err.message);
        }
    }

    const updateHotelChain = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-hotelchain", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getHotelChains();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteHotelChain = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-hotelchain", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getHotelChains();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getHotelChains();
        setCurrentID(null);
        setEditChainName();
        setEditPhoneNums();
        setEditEmails();
    }, []);

    console.log(hotelChainData);

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
                        <th>Chain Name</th>
                        <th>Number of Hotels</th>
                        <th>Phone Numbers</th>
                        <th>Contact Emails</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {hotelChainData.map(hotelchain => (
                        <tr className="subtitle-text">
                            <td>{hotelchain.chainname}</td>
                            <td>{hotelchain.numberhotels}</td>
                            <td>{hotelchain.phonenumbers}</td>
                            <td>{hotelchain.contactemails}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(hotelchain.chainname);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteHotelChain({ chainname: hotelchain.chainname });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Hotel Chain</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Chain Name"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editChainName}
                        onChange={e => {
                            setEditChainName(e.target.value)
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
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(editChainName, editPhoneNums, editEmails) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListHotelChainDatabase;