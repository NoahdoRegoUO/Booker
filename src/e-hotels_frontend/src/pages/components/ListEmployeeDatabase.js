import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListEmployeeDatabase = () => {

    const [employeeData, setEmployeeData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editSin, setEditSin] = useState(123123123);
    const [editName, setEditName] = useState("");
    const [editAddress, setEditAddress] = useState("");
    const [editAge, setEditAge] = useState(18);
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

    const submitDialog = (newEmployeeId, newSin, newName, newAddress, newAge, newHotelId) => {
        try {
            newSin = parseInt(newSin);
            newAge = parseInt(newAge);
            newHotelId = parseInt(newHotelId);

            const employeeInfo = {
                employeeid: newEmployeeId,
                sin: newSin,
                fullname: newName,
                employeeaddress: newAddress,
                age: newAge,
                hotelid: newHotelId,
            }

            if (typeOfEdit === "add") {
                addEmployee(employeeInfo);
            } else if (typeOfEdit === "edit") {
                updateEmployee(employeeInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getEmployees = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-employees");
            const jsonData = await response.json();

            setEmployeeData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addEmployee = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-employees", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getEmployees();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateEmployee = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-employee", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getEmployees();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteEmployee = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-employee", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getEmployees();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getEmployees();
        setCurrentID(null);
        setEditSin(123123123);
        setEditName("");
        setEditAddress("");
        setEditAge(18);
        setEditHotelId();
    }, []);

    console.log(employeeData);

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
                        <th>Employee ID</th>
                        <th>SIN</th>
                        <th>Full Name</th>
                        <th>Employee Address</th>
                        <th>Age</th>
                        <th>Hotel ID</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {employeeData.map(employee => (
                        <tr className="subtitle-text">
                            <td>{employee.employeeid}</td>
                            <td>{employee.sin}</td>
                            <td>{employee.fullname}</td>
                            <td>{employee.employeeaddress}</td>
                            <td>{employee.age}</td>
                            <td>{employee.hotelid}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(employee.employeeid);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteEmployee({ employeeid: employee.employeeid });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Employee</DialogTitle>
                <DialogContent>
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="SIN"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editSin}
                        onChange={e => {
                            setEditSin(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Full Name"
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
                        label="Employee Address"
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
                        label="Age"
                        type="int"
                        fullWidth
                        variant="standard"
                        value={editAge}
                        onChange={e => {
                            setEditAge(e.target.value)
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
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editSin, editName, editAddress, editAge, editHotelId) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListEmployeeDatabase;