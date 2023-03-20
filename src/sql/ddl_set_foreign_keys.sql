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