import React, { useState } from "react";

import './styles/globalStyles.css';

import { Button } from "@mui/material";
import SvgIcon from '@mui/material/SvgIcon';
import { grey } from "@mui/material/colors";
import { useNavigate } from "react-router-dom";

const HomeIcon = (props) => {
    return (
        <SvgIcon {...props}>
            <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z" />
        </SvgIcon>
    );
}

function EmployeePaymentPage() {
    const navigate = useNavigate();

    const loadHomePage = () => {
        navigate("/")
    }

    return (
        <div className="page-background">
            <div className="navbar-container">
                <Button className="home-button" variant="contained" aria-label="home" endIcon={<HomeIcon sx={{ color: grey[100] }} />} onClick={loadHomePage}>
                    Home
                </Button>
            </div>
        </div>
    )
};

export default EmployeePaymentPage;