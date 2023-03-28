import React, { useEffect, useState } from "react";


const ListArchiveDatabase = () => {

    const [archiveData, setArchiveData] = useState([]);
    const [displayDialog, setDisplayDialog] = useState(false);

    const getArchives = async () => {
        try {
            const response = await fetch("http://localhost:8080/get-archives");
            const jsonData = await response.json();

            setArchiveData(jsonData)
        } catch (err) {
            console.log(err.message);
        }
    }

    useEffect(() => {
        getArchives();
    }, []);

    console.log(archiveData);

    return (
        <>
            <table style={{ width: "80%", overflow: "scroll" }}>
                <thead>
                    <tr className="subtitle-text">
                        <th>Archive ID</th>
                        <th>Archive Type</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Special Requests</th>
                        <th>Hotel ID</th>
                        <th>Room Number</th>
                        <th>Customer ID</th>
                    </tr>
                </thead>
                <tbody>
                    {archiveData.map(archive => (
                        <tr className="subtitle-text">
                            <td>{archive.archiveid}</td>
                            <td>{archive.archivetype}</td>
                            <td>{archive.startdate}</td>
                            <td>{archive.enddate}</td>
                            <td>{archive.specialrequests.join(", ")}</td>
                            <td>{archive.hotelid}</td>
                            <td>{archive.roomnumber}</td>
                            <td>{archive.customerid}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </>
    )
};

export default ListArchiveDatabase;