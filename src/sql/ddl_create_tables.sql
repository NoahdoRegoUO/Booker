-- Command for setting search path
SET SEARCH_PATH = 'ehotels_db';

-- Command for creating hotel chain table
CREATE TABLE HotelChain (
    ChainName TEXT NOT NULL PRIMARY KEY,
	NumberHotels INT NOT NULL CHECK (NumberHotels > 0),
	PhoneNumbers TEXT[],
	ContactEmails TEXT[]);

-- Command for creating central office
CREATE TABLE CentralOffice (
    OfficeID INT NOT NULL PRIMARY KEY,
	OfficeAddress TEXT NOT NULL,
	ChainName TEXT NOT NULL);

-- Command for creating hotels table
CREATE TABLE Hotel (
    HotelID INT NOT NULL PRIMARY KEY,
	HotelName TEXT NOT NULL,
	HotelAddress TEXT NOT NULL,
	Stars SMALLINT NOT NULL CHECK (Stars <= 5) CHECK (Stars >= 0),
	PhoneNumbers TEXT[],
	ContactEmails TEXT[],
	ChainName TEXT NOT NULL);

-- Command for creating rooms table
CREATE TABLE Room (
    RoomNumber INT NOT NULL PRIMARY KEY,
	Price FLOAT NOT NULL CHECK (Price >= 0),
	Occupied BOOLEAN NOT NULL,
	Amenities TEXT[],
	Extendable BOOLEAN,
	View TEXT NOT NULL,
	Issues TEXT[],
	Capacity INT NOT NULL,
	HotelID INT NOT NULL);

-- Command for creating employee table
CREATE TABLE Employee (
	EmployeeID INT NOT NULL PRIMARY KEY,
	SIN INT NOT NULL,
	FullName TEXT NOT NULL,
	EmployeeAddress TEXT NOT NULL,
	Age SMALLINT CHECK (Age >= 16),
	HotelID INT NOT NULL);

-- Command for creating position table
CREATE TABLE Position (
	Title TEXT NOT NULL PRIMARY KEY,
	Salary FLOAT NOT NULL CHECK (Salary > 0),
	EmployeeID INT NOT NULL);

-- Command for creating customer table
CREATE TABLE Customer (
	EmployeeID INT NOT NULL PRIMARY KEY,
	SIN SMALLINT NOT NULL,
	FullName TEXT NOT NULL,
	CustomerAddress TEXT NOT NULL,
	Age SMALLINT CHECK (Age >= 16),
	RegistrationDate DATE,
	CreditCardNumber SMALLINT);

-- Command for creating archive table
CREATE TABLE Archive (
	ArchiveID INT NOT NULL PRIMARY KEY,
	Number_Rentings INT NOT NULL CHECK (Number_Rentings > 0),
	Number_Bookings INT NOT NULL CHECK (Number_Bookings > 0),
	ArchiveType TEXT NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	SpecialRequests TEXT[],
	HotelID INT NOT NULL,
	RoomNumber INT NOT NULL);

-- Command for creating booking table
CREATE TABLE Booking (
	BookingID INT NOT NULL PRIMARY KEY,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	SpecialRequests TEXT[],
	HotelID INT NOT NULL,
	RoomNumber INT NOT NULL);

-- Command for creating renting table
CREATE TABLE Renting (
	Renting INT NOT NULL PRIMARY KEY,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	SpecialRequests TEXT[],
	HotelID INT NOT NULL,
	RoomNumber INT NOT NULL);
