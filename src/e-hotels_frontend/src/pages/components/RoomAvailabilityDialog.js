import React, { useEffect, useState } from 'react';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import { Button } from "@mui/material";
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

const RoomAvailabilityDialog = (roomData) => {
    const [displayRoomDialog, setDisplayRoomDialog] = useState();
    const [avaiableRooms, setAvailableRooms] = useState();

    const closeRoomDialog = () => {
        setDisplayRoomDialog(false);
    }

    const getAvailableRooms = async () => {
        try {
            const response = await fetch("http://localhost:8080/search-rooms");
            const jsonData = await response.json();

            setAvailableRooms(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        setDisplayRoomDialog(true);
    }, []);

    return (
        <div>
            <Dialog open={displayRoomDialog} onClose={closeRoomDialog} fullWidth={true} maxWidth={"lg"}>
                <DialogTitle style={{ fontWeight: "bold" }}>Available Rooms</DialogTitle>
                <DialogContent>
                    <p>map</p>
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" color="error" onClick={closeRoomDialog}>Cancel</Button>
                </DialogActions>
            </Dialog>
        </div>
    )
}

export default RoomAvailabilityDialog;
