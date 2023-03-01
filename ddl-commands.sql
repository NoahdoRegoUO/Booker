
-- Command for creating hotel chain table
CREATE TABLE HotelChain (
    ChainName CHAR NOT NULL PRIMARY KEY,
	NumberHotels INT NOT NULL CHECK (NumberHotels > 0),
	PhoneNumbers CHAR[],
	ContactEmails CHAR[]);

-- Command for creating central office
CREATE TABLE HotelChain (
    OfficeID INT NOT NULL PRIMARY KEY,
	OfficeAddress CHAR NOT NULL CHECK,
	ChainName CHAR FOREIGN KEY REFERENCES HotelChain(ChainName));

-- Command for creating hotels table
CREATE TABLE Hotel (
    HotelID INT NOT NULL PRIMARY KEY,
	HotelName CHAR NOT NULL
	HotelAddress CHAR NOT NULL
	Stars SMALLINT NOT NULL CHECK (Stars <= 5) AND CHECK (Stars >= 0),
	PhoneNumbers CHAR[],
	ContactEmails CHAR[]);

-- Command for creating rooms table
CREATE TABLE Room (
    RoomNumber INT NOT NULL PRIMARY KEY,
	Price FLOAT NOT NULL CHECK (Price >= 0)
	Amenities ,
	Extendable BOOLEAN,
	View
	Issues CHAR[]
	Capacity 
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID));

-- Command for creating employee table
CREATE TABLE Employee (
	EmployeeID INT NOT NULL PRIMARY KEY,
	SIN SMALLINT(9) NOT NULL
	FullName CHAR NOT NULL
	EmployeeAddress CHAR NOT NULL
	Age SMALLINT(2) CHECK (Age >= 16)
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
	);

-- Command for creating position table
CREATE TABLE Position (
	Title CHAR NOT NULL PRIMARY KEY,
	Salary FLOAT NOT NULL CHECK (Salary > 0)
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
	);

-- Command for creating customer table
CREATE TABLE Customer (
	EmployeeID INT NOT NULL PRIMARY KEY,
	SIN SMALLINT(9) NOT NULL
	FullName CHAR NOT NULL
	CustomerAddress CHAR NOT NULL
	Age SMALLINT(2) CHECK (Age >= 16)
	RegistrationDate DATE
	CreditCardNumber SMALLINT(16)
	);

-- Command for creating archive table
CREATE TABLE Archive (
	ArchiveID INT NOT NULL PRIMARY KEY
	Number_Rentings INT NOT NULL CHECK (Number_Rentings > 0)
	Number_Bookings INT NOT NULL CHECK (Number_Bookings > 0)
	);

-- Command for creating booking table
CREATE TABLE Booking (
	BookingID INT NOT NULL PRIMARY KEY
	StartDate DATE NOT NULL
	EndDate DATE NOT NULL
	SpecialRequests []CHAR
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
	FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber)
	);

-- Command for creating renting table
CREATE TABLE Renting (
	Renting INT NOT NULL PRIMARY KEY
	StartDate DATE NOT NULL
	EndDate DATE NOT NULL
	SpecialRequests []CHAR
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
	FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber)
	);