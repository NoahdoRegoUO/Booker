import React, { useState } from "react";

import './styles/globalStyles.css';
import './styles/EmployeePaymentPage.css';

import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";
import Select from 'react-select';
import ListArchiveDatabase from "./components/ListArchiveDatabase";
import ListBookingDatabase from "./components/ListBookingDatabase";
import ListRentingDatabase from "./components/ListRentingDatabase";

const HomeIcon = (props) => {
    return (
        <SvgIcon {...props}>
            <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z" />
        </SvgIcon>
    );
}

const selectCustomStyles = {
    option: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        backgroundColor: "#f2f2f2",
        fontSize: "2vmin",
    }),
    control: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        backgroundColor: "#f2f2f2",
        padding: "5px",
        border: "none",
        boxShadow: "none",
        fontSize: "2vmin",
    }),
    singleValue: (defaultStyles) => ({
        ...defaultStyles,
        color: "#1f1f1f",
        fontSize: "2vmin"
    }),
};

const dataOptions = [
    { value: 'archive', label: 'Archive' },
    { value: 'booking', label: 'Booking' },
    { value: 'renting', label: 'Renting' }
]

function EmployeePaymentPage() {
    const navigate = useNavigate();
    const [selectedData, setSelectedData] = useState(null);

    const loadHomePage = () => {
        navigate("/")
    }

    const handleDataSelect = e => {
        setSelectedData(e.value);
    };

    function DataDisplay() {
        if (selectedData === null) {
            return <p className="subtitle-text">Select data type above</p>
        } else if (selectedData === "archive") {
            return <ListArchiveDatabase></ListArchiveDatabase>
        } else if (selectedData === "booking") {
            return <ListBookingDatabase></ListBookingDatabase>
        } else if (selectedData === "renting") {
            return <ListRentingDatabase></ListRentingDatabase>
        }
    }

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
            </div>
            <p className="title-text">Handle Payments</p>
            <Select
                id="select-dropdown"
                defaultValue={null}
                placeholder="Data"
                options={dataOptions}
                onChange={handleDataSelect}
                value={dataOptions.filter(function (option) {
                    return option.value === selectedData;
                })}
                styles={selectCustomStyles}
                isSearchable={true}
            />
            <DataDisplay></DataDisplay>
        </div>
    )
};

export default EmployeePaymentPage;