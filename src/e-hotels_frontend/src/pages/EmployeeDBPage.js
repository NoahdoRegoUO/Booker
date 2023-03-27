import React, { useState } from "react";

import './styles/globalStyles.css';
import './styles/EmployeeDBPage.css';
import ListHotelDatabase from "./components/ListHotelDatabase";
import ListCentralOfficeDatabase from "./components/ListCentralOfficeDatabase";
import ListPositionDatabase from "./components/ListPositionDatabase";
import ListCustomerDatabase from "./components/ListCustomerDatabase";

import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";
import Select from 'react-select';

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
    { value: 'centraloffice', label: 'Central Office' },
    { value: 'customer', label: 'Customer' },
    { value: 'employee', label: 'Employee' },
    { value: 'hotel', label: 'Hotel' },
    { value: 'hotelchain', label: 'Hotel Chain' },
    { value: 'position', label: 'Position' },
    { value: 'room', label: 'Room' }
]

function EmployeeDBPage() {
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
        } else if (selectedData === "centraloffice") {
            return <ListCentralOfficeDatabase></ListCentralOfficeDatabase>
        } else if (selectedData === "customer") {
            return <ListCustomerDatabase></ListCustomerDatabase>
        } else if (selectedData === "employee") {
            return <p className="subtitle-text">{selectedData}</p>
        } else if (selectedData === "hotel") {
            return <ListHotelDatabase></ListHotelDatabase>
        } else if (selectedData === "hotelchain") {
            return <p className="subtitle-text">{selectedData}</p>
        } else if (selectedData === "position") {
            return <ListPositionDatabase></ListPositionDatabase>
        } else if (selectedData === "room") {
            return <p className="subtitle-text">{selectedData}</p>
        }
    }

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
            </div>
            <p className="title-text">Edit Database</p>
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

export default EmployeeDBPage;