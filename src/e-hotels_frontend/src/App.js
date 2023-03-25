import React, { useState } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import CustomerHome from "./pages/CustomerHome";
import EmployeeHome from "./pages/EmployeeHome";
import EmployeeDBPage from "./pages/EmployeeDBPage";
import EmployeePaymentPage from "./pages/EmployeePaymentPage";

function App() {
  return <Routes>
    <Route path="/" element={<Home />} />
    <Route path="/customer" element={<CustomerHome />} />
    <Route path="/employee" element={<EmployeeHome />} />
    <Route path="/employee/database" element={<EmployeeDBPage />} />
    <Route path="/employee/payments" element={<EmployeePaymentPage />} />
  </Routes>
}

export default App;
