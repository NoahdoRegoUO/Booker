import React, { useState } from "react";

import './styles/CustomerHome.css';
import './styles/globalStyles.css';

import { Link } from "react-router-dom";

import Select from 'react-select';

const locationOptions = [
    { value: 'Ottawa', label: 'Ottawa' },
    { value: 'Toronto', label: 'Toronto' },
    { value: 'Montreal', label: 'Montreal' },
]

const starOptions = [
    { value: 1, label: '1 Star' },
    { value: 2, label: '2 Stars' },
    { value: 3, label: '3 Stars' },
    { value: 4, label: '4 Stars' },
    { value: 5, label: '5 Stars' }
]

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

function CustomerHome() {
    return (
        <div className="page-background">
            <p className="title-text">Search Hotels</p>
            <div id="search-info">
                <p className="subtitle-text" id="search-title">Hotel Information</p>
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Location"
                    options={locationOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Stars"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Chain"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
            </div>
            <div id="search-info">
                <p className="subtitle-text" id="search-title">Room Information</p>
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Total Number of Rooms"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Room Capacity"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
                <Select
                    id="select-dropdown"
                    defaultValue={null}
                    placeholder="Price Range"
                    options={starOptions}
                    styles={selectCustomStyles}
                    isSearchable={false}
                />
            </div>
        </div>
    );
}

export default CustomerHome;
