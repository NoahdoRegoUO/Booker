import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListPositionDatabase = () => {

    const [positionData, setPositionData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editTitle, setEditTitle] = useState("");
    const [editSalary, setEditSalary] = useState();
    const [editEID, setEditEID] = useState();

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

    const submitDialog = (newTitle, newSalary, newEID) => {
        try {
            newSalary = parseFloat(newSalary);
            newEID = parseInt(newEID);

            const positionInfo = {
                oTitle: currentID,
                nTitle: newTitle,
                salary: newSalary,
                employeeid: newEID
            }

            const addPositionInfo = {
                newTitle: newTitle,
                salary: newSalary,
                employeeid: newEID
            }

            if (typeOfEdit === "add") {
                addPosition(addPositionInfo);
            } else if (typeOfEdit === "edit") {
                updatePosition(positionInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getPositions = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-positions");
            const jsonData = await response.json();

            setPositionData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addPosition = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-positions", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getPositions();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updatePosition = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-position", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getPositions();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deletePosition = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-position", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getPositions();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getPositions();
        setCurrentID(null);
        setEditTitle();
        setEditSalary();
        setEditEID();
    }, []);

    console.log(positionData);

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
                        <th>Title</th>
                        <th>Salary</th>
                        <th>Employeeid</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {positionData.map(position => (
                        <tr className="subtitle-text">
                            <td>{position.title}</td>
                            <td>{position.salary}</td>
                            <td>{position.employeeid}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(position.title);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deletePosition({ title: position.title });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Position</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Title"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editTitle}
                        onChange={e => {
                            setEditTitle(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Salary"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editSalary}
                        onChange={e => {
                            setEditSalary(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Employee ID"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editEID}
                        onChange={e => {
                            setEditEID(e.target.value)
                        }}
                    />
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(editTitle, editSalary, editEID) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListPositionDatabase;