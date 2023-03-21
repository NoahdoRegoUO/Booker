import React, { useState } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import CustomerHome from "./pages/CustomerHome";

function App() {
  return <Routes>
    <Route path="/" element={<Home />} />
    <Route path="/customer" element={<CustomerHome />} />
  </Routes>
}

export default App;
