import React, { useState } from "react";

import './styles/globalStyles.css';

import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";
import Card from "./components/Card";
import databaseImg from "./images/database.jpg"
import paymentImg from "./images/payment.jpg"



const HomeIcon = (props) => {
    return (
        <SvgIcon {...props}>
            <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z" />
        </SvgIcon>
    );
}

function EmployeeHome() {
    const navigate = useNavigate();

    const loadHomePage = () => {
        navigate("/")
    }

    const loadEditDatabasePage = () => {
        navigate("/employee/database")
    }

    const loadPaymentsPage = () => {
        navigate("/employee/payments")
    }

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
            </div>
            <p className="title-text">Employee Home Page</p>
            <div className="row-container">
                <Card
                    image={databaseImg}
                    title="Edit Database"
                    description="..."
                    action={loadEditDatabasePage}
                />
                <Card
                    image={paymentImg}
                    title="Handle Payments"
                    description="..."
                    action={loadPaymentsPage}
                />
            </div>
        </div>
    )
};

export default EmployeeHome;