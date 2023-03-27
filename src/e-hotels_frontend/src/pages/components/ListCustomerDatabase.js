import React, { useEffect, useState } from "react";
import { Button } from "@mui/material";
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const ListCustomerDatabase = () => {

    const [customerData, setCustomerData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const [typeOfEdit, setTypeOfEdit] = useState("done");
    const [currentID, setCurrentID] = useState(null);
    const [editSin, setEditSin] = useState(123123123);
    const [editName, setEditName] = useState("");
    const [editAddress, setEditAddress] = useState("");
    const [editAge, setEditAge] = useState(18);
    const [editRegistrationDate, setEditRegistrationDate] = useState("");
    const [editCreditCardNumber, setEditCreditCardNumber] = useState(123123123);

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

    const submitDialog = (newCustomerId, newSin, newName, newAddress, newAge, newRegistrationDate, newCreditCardNumber) => {
        try {
            newSin = parseInt(newSin);
            newAge = parseInt(newAge);
            newCreditCardNumber = parseInt(newCreditCardNumber);

            const customerInfo = {
                customerid: newCustomerId,
                sin: newSin,
                fullname: newName,
                customeraddress: newAddress,
                age: newAge,
                registrationdate: newRegistrationDate,
                creditcardnumber: newCreditCardNumber
            }

            if (typeOfEdit === "add") {
                addCustomer(customerInfo);
            } else if (typeOfEdit === "edit") {
                updateCustomer(customerInfo);
            }
            setDisplayDialog(false);
            window.location.reload();
        } catch (error) {
            console.log(error.message)
        }
    }

    const getCustomers = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-customers");
            const jsonData = await response.json();

            setCustomerData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    const addCustomer = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/insert-customers", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getCustomers();

        } catch (err) {
            console.log(err.message);
        }
    }

    const updateCustomer = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/update-customer", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getCustomers();

        } catch (err) {
            console.log(err.message);
        }
    }

    const deleteCustomer = async (data) => {
        try {
            const response = await fetch("http://localhost:8080/delete-customer", {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            });
            const jsonData = await response.json();

            console.log(jsonData);
            getCustomers();

        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getCustomers();
        setCurrentID(null);
        setEditSin(123123123);
        setEditName("");
        setEditAddress("");
        setEditAge(18);
        setEditRegistrationDate("");
        setEditCreditCardNumber(123123123);
    }, []);

    console.log(customerData);

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
                        <th>Customer ID</th>
                        <th>SIN</th>
                        <th>Full Name</th>
                        <th>Customer Address</th>
                        <th>Age</th>
                        <th>Registration Date</th>
                        <th>Credit Card Number</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {customerData.map(customer => (
                        <tr className="subtitle-text">
                            <td>{customer.customerid}</td>
                            <td>{customer.sin}</td>
                            <td>{customer.fullname}</td>
                            <td>{customer.customeraddress}</td>
                            <td>{customer.age}</td>
                            <td>{customer.registrationdate}</td>
                            <td>{customer.creditcardnumber}</td>
                            <td><Button
                                variant="contained"
                                color="success"
                                onClick={() => {
                                    setTypeOfEdit("edit");
                                    openDialog(customer.customerid);
                                }}>
                                Edit
                            </Button></td>
                            <td><Button
                                variant="contained"
                                color="error"
                                onClick={() => {
                                    deleteCustomer({ customerid: customer.customerid });
                                    window.location.reload();
                                }}>
                                Delete
                            </Button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <Dialog open={displayDialog} onClose={closeDialog} fullWidth={true} maxWidth={"md"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Edit Customer</DialogTitle>
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
                        label="Customer Address"
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
                        label="Registration Date"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editRegistrationDate}
                        onChange={e => {
                            setEditRegistrationDate(e.target.value)
                        }}
                    />
                    <TextField
                        autoFocus
                        margin="dense"
                        id="name"
                        label="Credit Card Number"
                        type="text"
                        fullWidth
                        variant="standard"
                        value={editCreditCardNumber}
                        onChange={e => {
                            setEditCreditCardNumber(e.target.value)
                        }}
                    />
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeDialog}>Cancel</Button>
                    <Button variant="contained" color="success" onClick={() => { submitDialog(currentID, editSin, editName, editAddress, editAge, editRegistrationDate, editCreditCardNumber) }}>{typeOfEdit}</Button>
                </DialogActions>
            </Dialog>
        </>
    )
};

export default ListCustomerDatabase;