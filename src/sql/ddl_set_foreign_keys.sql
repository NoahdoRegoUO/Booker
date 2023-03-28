-- Command for setting search path
SET SEARCH_PATH = 'ehotels_db';


-- Commands for setting FKs
ALTER TABLE CentralOffice
ADD FOREIGN KEY (ChainName) REFERENCES HotelChain(ChainName);

ALTER TABLE Hotel
ADD FOREIGN KEY (ChainName) REFERENCES HotelChain(ChainName);

ALTER TABLE Room
ADD FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID);

ALTER TABLE Employee
ADD FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID);

ALTER TABLE Position
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);

ALTER TABLE Booking
ADD FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID);

ALTER TABLE Booking
ADD FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber);

ALTER TABLE Booking
ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

ALTER TABLE Renting
ADD FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID);

ALTER TABLE Renting
ADD FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber);

ALTER TABLE Renting
ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

-- Commands for Creating Indexes
CREATE INDEX idx_customer_fullname
ON customer (fullname);

CREATE INDEX idx_employee_fullname
ON employee (fullname);

CREATE INDEX idx_booking_customer_confirm
ON booking (startdate, enddate, hotelid, customerid);

-- Commands for Creating Views
CREATE VIEW available_rooms_per_area AS 
SELECT 
  split_part(hoteladdress, ',', 2) as city,
  COUNT(*) as num_available_rooms
FROM 
  room
  JOIN hotel ON room.hotelid = hotel.hotelid
WHERE 
  occupied = false
GROUP BY 
  city;

CREATE VIEW room_capacity_by_hotel AS
SELECT 
  hotel.hotelid, 
  hotel.hotelname, 
  SUM(room.capacity) as total_capacity
FROM 
  room
  JOIN hotel ON room.hotelid = hotel.hotelid
GROUP BY 
  hotel.hotelid, 
  hotel.hotelname;