import React, { useState } from "react";

import logo from './logo/booker_logo.svg';
import hotel1Img from './images/hotel1.jpg';
import hotel2Img from './images/hotel2.jpg';
import './styles/Home.css';

import Button from '@mui/material/Button';

import { useNavigate } from "react-router-dom";

function Home() {
    const navigate = useNavigate();

    const loadCustomerPage = () => {
        navigate("/customer")
    }

    const loadEmployeePage = () => {
        navigate("/employee")
    }

    return (
        <div className="Home">
            <img src={logo} className="Home-logo" alt="Booker Logo" />
            <p id="sign-in-text">Sign in as:</p>
            <div className="button-style">
                <Button variant="contained" color="primary" size="large" onClick={loadCustomerPage}>Customer</Button>
            </div>
            <div className="button-style">
                <Button variant="contained" color="primary" size="large" onClick={loadEmployeePage}>Employee</Button>
            </div>
            <div className="button-style">
                <Button variant="contained" color="primary" size="large" onClick={loadCustomerPage}>Create Test Table</Button>
            </div>
            <div id="left-hotel-image-container">
                <img src={hotel1Img} class="hotel-image" alt="Hotel 1" />
            </div>
            <div id="right-hotel-image-container">
                <img src={hotel2Img} class="hotel-image" alt="Hotel 2" />
            </div>
        </div>
    );
}

export default Home;
