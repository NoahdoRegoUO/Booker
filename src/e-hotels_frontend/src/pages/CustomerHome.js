import React, { useState } from "react";

import './styles/CustomerHome.css';
import './styles/globalStyles.css';

import { Link } from "react-router-dom";

import Select from 'react-select';

const options = [
    { value: 'chocolate', label: 'Chocolate' },
    { value: 'strawberry', label: 'Strawberry' },
    { value: 'vanilla', label: 'Vanilla' }
]

function CustomerHome() {
    return (
        <div className="page-background">
            <p className="title-text">Search Hotels</p>
            <div id="search-info">
                <p className="subtitle-text">Hotel Information</p>
                <Select
                    className="basic-single"
                    classNamePrefix="select"
                    defaultValue={"1"}
                    isDisabled={false}
                    isLoading={false}
                    isClearable={true}
                    isRtl={false}
                    isSearchable={false}
                    name="stars"
                    options={options}
                />
            </div>
            <div id="search-info">
                <p className="subtitle-text">Room Information</p>
            </div>
        </div>
    );
}

export default CustomerHome;
