import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListCentralOfficeDatabase = () => {

    const [officeData, setOfficeData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editAddress, setEditAddress] = useState("");
    const [editChainName, setEditChainName] = useState("");

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

    const submitDialog = (newOfficeid, newOfficeaddress, newChainname) => {
        try {
            newOfficeid = parseInt(newOfficeid);

            const officeInfo = {
                officeid: newOfficeid,
                officeaddress: newOfficeaddress,
                chainname: newChainname
            }

            if (typeOfEdit === "add") {
                addOffice(officeInfo);
            } else if (typeOfEdit === "edit") {
                updateOffice(officeInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getOffices = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-central-offices");
            const jsonData = await response.json();

            setOfficeData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addOffice = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-centraloffices", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getOffices();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateOffice = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-centraloffice", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getOffices();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteOffice = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-centraloffice", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getOffices();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getOffices();
        setCurrentID(null);
        setEditAddress("");
        setEditChainName("");
    }, []);

    console.log(officeData);

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
                        <th>ID</th>
                        <th>Address</th>
                        <th>Hotel Chain</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {officeData.map(centraloffice => (
                        <tr className="subtitle-text">
                            <td>{centraloffice.officeid}</td>
                            <td>{centraloffice.officeaddress}</td>
                            <td>{centraloffice.chainname}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(centraloffice.officeid);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteOffice({ officeid: centraloffice.officeid });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Central Office</DialogTitle>
                <DialogContent>
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
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editAddress, editChainName) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListCentralOfficeDatabase;