create database AirlineSystem;
use AirlineSystem;
create table Administrator (username varchar(25),password varchar(25) primary key);
INSERT INTO Administrator VALUES ('admin1', 'pass1');
create table Airlines (airlineNo varchar(25) primary key ,airlineName varchar(25),country varchar(25));

INSERT INTO Airlines VALUES ('AC001', 'Air Canada', 'Canada');
INSERT INTO Airlines VALUES ('UA001', 'United Airlines', 'USA');
INSERT INTO Airlines VALUES ('BA001', 'British Airways', 'UK');
INSERT INTO Airlines VALUES ('EK001', 'Emirates', 'UAE');
INSERT INTO Airlines VALUES ('SQ001', 'Singapore Airlines', 'Singapore');
INSERT INTO Airlines VALUES ('AF001', 'Air France', 'France');
INSERT INTO Airlines VALUES ('LH001', 'Lufthansa', 'Germany');
INSERT INTO Airlines VALUES ('QR001', 'Qatar Airways', 'Qatar');
INSERT INTO Airlines VALUES ('EY001', 'Etihad Airways', 'UAE');
INSERT INTO Airlines VALUES ('JL001', 'Japan Airlines', 'Japan');


create table GroundStaff (staffId varchar(25) primary key,
cname varchar(50), 
gender char(15),
staffLocation varchar(25), 
department varchar(25),
salary int(10), 
primContactNo int(22) not null, 
secContactNo int(22), 
airlineNo varchar(25),
FOREIGN KEY (airlineNo) REFERENCES airlines(airlineNo));

INSERT INTO GroundStaff VALUES ('GS001', 'John Smith', 'Male', 'Toronto',
'Maintenance', 40000, 12345789, 2395689, 'AC001');
 INSERT INTO GroundStaff VALUES ('GS002', 'Jane Doe', 'Female', 'Chicago',
'Catering', 35000, 26796789, 34567901, 'UA001');
 INSERT INTO GroundStaff VALUES ('GS003', 'David Lee', 'Male', 'London', 'Baggage
Handling', 38000, 39679901, 45659012, 'BA001');
 INSERT INTO GroundStaff VALUES ('GS004', 'Ahmed Ali', 'Male', 'Dubai', 'Cleaning',
42000, 45678073, 56784234, 'EK001');
 INSERT INTO GroundStaff VALUES ('GS005', 'Anna Tan', 'Female', 'Singapore',
'Security', 38000, 56789823, 67894234, 'SQ001');
 INSERT INTO GroundStaff VALUES ('GS006', 'Marie Leblanc', 'Female', 'Paris',
'Check-in', 36000, 67301234, 78212345, 'AF001');
 INSERT INTO GroundStaff VALUES ('GS007', 'Hans Mueller', 'Male', 'Frankfurt',
'Cargo', 40000, 78972345, 89053456 , 'LH001');
 INSERT INTO GroundStaff VALUES ('GS008', 'Fatima Ali', 'Female', 'Doha',
'Maintenance', 42000, 890125567, 932345678, 'QR001');
 INSERT INTO GroundStaff VALUES ('GS009', 'Youssef Ali', 'Male', 'Abu Dhabi',
'Baggage Handling', 38000, 909345678, 123667890, 'EY001');
INSERT INTO GroundStaff VALUES ('GS010', 'Kenta Nakamura', 'Male', 'Tokyo',
'Catering', 35000, 234565901, 341789012, 'JL001');
INSERT INTO GroundStaff VALUES ('GS011', 'Amy Wong', 'Female', 'Hong Kong',
'Security', 38000, 345609012, 456090123, 'JL001');
INSERT INTO GroundStaff VALUES ('GS012', 'Mohammed Ali', 'Male', 'Dubai',
'Cleaning', 42000, 407890123, 567001234, 'EK001');
INSERT INTO GroundStaff VALUES ('GS013', 'Sophie Martin', 'Female', 'Paris',
'Check-in', 36000, 67872345, 78955456, 'AF001');
INSERT INTO GroundStaff VALUES ('GS014', 'Maximilian Weber', 'Male', 'Frankfurt',
'Cargo', 40000, 78978456, 89019868, 'LH001');
INSERT INTO GroundStaff VALUES ('GS015', 'Lina Al-Mazrooei', 'Female', 'Abu
Dhabi', 'Maintenance', 42000, 89734567, 907385678, 'EY001');

create table Pilot (pilotId varchar(25) primary key ,
cname varchar(50),
 gender char(15), 
 hoursFlown int(10),
 salary int(10), 
 primContactNo int(11) not null ,
 secContactNo int (11), 
airlineNo varchar(25),
FOREIGN KEY (airlineNo) REFERENCES airlines(airlineNo));

INSERT INTO Pilot VALUES ('P001', 'John Smith', 'Male', 2000, 50000,
12340890, 98765470, 'AC001');
INSERT INTO Pilot VALUES ('P002', 'Emily Jones', 'Female', 3000, 60000,
23078901, 87654309, 'UA001');
 INSERT INTO Pilot VALUES ('P003', 'David Brown', 'Male', 2500, 55000,
34560012, 76540098, 'BA001');
INSERT INTO Pilot VALUES ('P004', 'Maria Garcia', 'Female', 3500, 70000,
45890123, 65432107, 'EK001');
INSERT INTO Pilot VALUES ('P005', 'Tan Wei', 'Male', 2800, 58000, 56780234,
54321090, 'SQ001');
INSERT INTO Pilot VALUES ('P006', 'Sophie Martin', 'Female', 3200, 65000,
67890545, 43210986, 'AF001');
INSERT INTO Pilot VALUES ('P007', 'Johannes Mueller', 'Male', 2700, 56000,
78423456, 32887654, 'LH001');
INSERT INTO Pilot VALUES ('P008', 'Sara Ahmed', 'Female', 3800, 75000,
89012867, 21094543, 'QR001');
INSERT INTO Pilot VALUES ('P009', 'Ali Khan', 'Male', 2900, 59000, 90105678,
10987832, 'EY001');
INSERT INTO Pilot VALUES ('P010', 'Yuta Nakamura', 'Male', 2600, 54000,
01276789, 09884321, 'JL001');
INSERT INTO Pilot VALUES ('P011', 'Rachel Lee', 'Female', 3100, 63000,
12345096, 98765439, 'AC001');
INSERT INTO Pilot VALUES ('P012', 'Adam Taylor', 'Male', 2400, 52000,
23457876, 87658109, 'UA001');
INSERT INTO Pilot VALUES ('P013', 'Emma Wilson', 'Female', 3600, 72000,
34569876, 76581098, 'BA001');
INSERT INTO Pilot VALUES ('P014', 'Khalid Al-Saud', 'Male', 3000, 61000,
45009876, 65430987, 'EK001');
INSERT INTO Pilot VALUES ('P015', 'Jasmine Lim', 'Female', 2700, 56000,
56759876, 54339876, 'SQ001');


create table CabinCrew (cabinId varchar(25) primary key ,
cname varchar(50),
 gender char(15),
 hoursFlown int(10), 
 position varchar(25),
 salary int(10), 
 primContactNo int(40) not null,
 secContactNo int (40),
airlineNo varchar(25),
FOREIGN KEY (airlineNo) REFERENCES airlines(airlineNo));

INSERT INTO CabinCrew VALUES ('CC001', 'John Smith', 'Male', 500, 'Flight
Attendant', 3000, 12387890, 98765710, 'AC001');
 INSERT INTO CabinCrew VALUES ('CC002', 'Jane Doe', 'Female', 800, 'Purser',
5000, 23578901, 87652109, 'UA001');
INSERT INTO CabinCrew VALUES ('CC003', 'David Williams', 'Male', 600, 'Senior
Flight Attendant', 4000, 34539012, 76543398, 'BA001');
INSERT INTO CabinCrew VALUES ('CC004', 'Fatima Ali', 'Female', 1000, 'Cabin
Manager', 6000, 45790123, 65432987, 'EK001');
INSERT INTO CabinCrew VALUES ('CC005', 'Sarah Lee', 'Female', 700, 'Flight
Attendant', 3500, 56771234, 54379876, 'SQ001');
INSERT INTO CabinCrew VALUES ('CC006', 'Pierre Lefebvre', 'Male', 900, 'Senior
Purser', 5500, 67890745, 43210975, 'AF001');
INSERT INTO CabinCrew VALUES ('CC007', 'Hans Mueller', 'Male', 1200, 'Cabin
Manager', 7000, 78973456, 32787654, 'LH001');
INSERT INTO CabinCrew VALUES ('CC008', 'Fatima Ahmed', 'Female', 1500, 'Cabin
Manager', 8000, 89074567, 21098643, 'QR001');
INSERT INTO CabinCrew VALUES ('CC009', 'Sara Khalid', 'Female', 1100, 'Senior
Flight Attendant', 5000, 90123468, 10987662, 'EY001');
INSERT INTO CabinCrew VALUES ('CC010', 'Kenji Nakamura', 'Male', 1000, 'Purser',
4500, 12346890, 98763210, 'JL001');
INSERT INTO CabinCrew VALUES ('CC011', 'Mary Johnson', 'Female', 700, 'Flight
Attendant', 3500, 23456901, 87662109, 'AC001');
INSERT INTO CabinCrew VALUES ('CC012', 'Richard Brown', 'Male', 800, 'Senior
Flight Attendant', 4000, 34566012, 76546098, 'UA001');
INSERT INTO CabinCrew VALUES ('CC013', 'Sophie Martin', 'Female', 900, 'Purser',
5500, 45678623, 65460987, 'EK001');
INSERT INTO CabinCrew VALUES ('CC014', 'Paulo Silva', 'Male', 600, 'Flight
Attendant', 3000, 56786234, 54326876, 'SQ001');
INSERT INTO CabinCrew VALUES ('CC015', 'Maria Hernandez', 'Female', 1100,
'Cabin Manager', 5000, 67862345, 43268765, 'BA001');

CREATE TABLE Passengers (
  passengerNo varchar(25) PRIMARY KEY,
  passportNo VARCHAR(25) UNIQUE,
  firstName VARCHAR(25),
  lastName VARCHAR(25),
  gender CHAR(15),
  DOB DATE,
  Nationality VARCHAR(50),
  primContactNo INT(10) not null,
  secCcontactNo INT(10)
);

INSERT INTO Passengers 
VALUES
('P1001', 'S1235', 'John', 'Doe', 'Male', '1990-01-01', 'American', 12347890, NULL),
('P1002', 'S2385', 'John', 'Doe', 'Female', '1995-03-15', 'Canadian', 24678901,
34549012),
('P1003', 'S3656', 'David', 'Smith', 'Male', '1985-12-25', 'British', 34549012, NULL),
('P1004', 'S4167', 'Sarah', 'Johnson', 'Female', '1988-07-04', 'Emirati', 45490123,
NULL),
('P1005', 'S5628', 'Michael', 'Lee', 'Male', '1979-09-21', 'Singaporean', 56401234,
67890145),
('P1006', 'S6739', 'Emily', 'Wang', 'Female', '2000-05-10', 'French', 64012345,
NULL),
('P1007', 'S7820', 'Daniel', 'Kim', 'Male', '1992-11-30', 'German', 78943456, NULL),
('P1008', 'S8941', 'Sophia', 'Chen', 'Female', '1997-02-14', 'Qatari', 89044567,
90124678),
('P1009', 'S9062', 'Muhammad', 'Ali', 'Male', '1980-04-03', 'Emirati', 90124678,
NULL),
('P1010', 'S0623', 'Yuki', 'Tanaka', 'Female', '1998-08-08', 'Japanese', 12344890,
NULL),
('P1011', 'S1209', 'Mark', 'Smith', 'Male', '1991-06-18', 'American', 23478901,
34564012),
('P1012', 'S2341', 'Maggie', 'Li', 'Female', '1996-09-05', 'Canadian', 34567822,
NULL),
('P1013', 'S3406', 'Tom', 'Taylor', 'Male', '1975-03-03', 'British', 45640123, NULL),
('P1014', 'S4967', 'Sara', 'Lee', 'Female', '1994-11-11', 'Emirati', 56501234,
67890545),
('P1015', 'S5698', 'Joseph', 'Goh', 'Male', '1987-02-28', 'Singaporean', 67893345,
NULL);


CREATE TABLE Reservation (
reservationId int PRIMARY KEY,
passengerNo varchar(25),
airlineNo varchar(25),
FOREIGN KEY (passengerNo) REFERENCES passengers(passengerNo),
FOREIGN KEY (airlineNo) REFERENCES airlines(airlineNo),
CONSTRAINT unique_reservation UNIQUE (passengerNo, airlineNo)
);

INSERT INTO Reservation VALUES (101, 'P1001', 'AC001');
INSERT INTO Reservation VALUES (102, 'P1002', 'UA001');
INSERT INTO Reservation VALUES (103, 'P1003', 'BA001');
INSERT INTO Reservation VALUES (104, 'P1004', 'EK001');
INSERT INTO Reservation VALUES (105, 'P1005', 'SQ001');
INSERT INTO Reservation VALUES (106, 'P1006', 'AF001');
INSERT INTO Reservation VALUES (107, 'P1007', 'LH001');
INSERT INTO Reservation VALUES (108, 'P1008', 'QR001');
INSERT INTO Reservation VALUES (109, 'P1009', 'EY001');
INSERT INTO Reservation VALUES (110, 'P1010', 'JL001');
INSERT INTO Reservation VALUES (111, 'P1011', 'AC001');
INSERT INTO Reservation VALUES (112, 'P1012', 'UA001');
INSERT INTO Reservation VALUES (113, 'P1013', 'BA001');
INSERT INTO Reservation VALUES (114, 'P1014', 'EK001');
INSERT INTO Reservation VALUES (115, 'P1015', 'SQ001');



CREATE TABLE Baggage (
    baggageId VARCHAR(25) PRIMARY KEY,
    status VARCHAR(25),
    weight INT(10)
);

INSERT INTO Baggage VALUES ('BAG001', 'Checked', 20);
INSERT INTO Baggage VALUES ('BAG002', 'Delayed', 25);
INSERT INTO Baggage VALUES ('BAG003', 'NotChecked', 18);
INSERT INTO Baggage VALUES ('BAG004', 'Delayed', 22);
INSERT INTO Baggage VALUES ('BAG005', 'Checked', 16);
 INSERT INTO Baggage VALUES ('BAG006', 'Checked', 21);
 INSERT INTO Baggage VALUES ('BAG007', 'Delivered', 19);
 INSERT INTO Baggage VALUES ('BAG008', 'Delivered', 24);
 INSERT INTO Baggage VALUES ('BAG009', 'Checked', 27);
INSERT INTO Baggage VALUES ('BAG010', 'Checked', 15);
INSERT INTO Baggage VALUES ('BAG011', 'Delayed', 23);
INSERT INTO Baggage VALUES ('BAG012', 'NotChecked', 26);
INSERT INTO Baggage VALUES ('BAG013', 'NotChecked', 17);
INSERT INTO Baggage VALUES ('BAG014', 'Delivered', 30);
INSERT INTO Baggage VALUES ('BAG015', 'Delivered', 28);

CREATE TABLE LuggageInfo (
    passengerNo varchar(25),
    airlineNo varchar (25),
    baggageId varchar(25),
    CheckinTime TIME,
    PRIMARY KEY (PassengerNo, AirlineNo, baggageId, CheckinTime),
    FOREIGN KEY (PassengerNo,airlineNo) REFERENCES reservation(PassengerNo,airlineNo),
    FOREIGN KEY (baggageId) REFERENCES Baggage(baggageId)
);

INSERT INTO LuggageInfo VALUES ('P1001', 'AC001', 'BAG001', '10:12:00');
INSERT INTO LuggageInfo VALUES ('P1002', 'UA001', 'BAG002', '11:34:06');
INSERT INTO LuggageInfo VALUES ('P1003', 'BA001', 'BAG003', '12:32:04');
INSERT INTO LuggageInfo VALUES ('P1004', 'EK001', 'BAG004', '13:10:00');
INSERT INTO LuggageInfo VALUES ('P1005', 'SQ001', 'BAG005', '14:08:08');
INSERT INTO LuggageInfo VALUES ('P1006', 'AF001', 'BAG006', '15:04:00');
INSERT INTO LuggageInfo VALUES ('P1007', 'LH001', 'BAG007', '16:34:04');
INSERT INTO LuggageInfo VALUES ('P1008', 'QR001', 'BAG008', '17:16:02');
INSERT INTO LuggageInfo VALUES ('P1009', 'EY001', 'BAG009', '18:23:34');
INSERT INTO LuggageInfo VALUES ('P1010', 'JL001', 'BAG010', '19:45:12');
INSERT INTO LuggageInfo VALUES ('P1011', 'AC001', 'BAG011', '20:59:42');
INSERT INTO LuggageInfo VALUES ('P1012', 'UA001', 'BAG012', '21:00:14');
INSERT INTO LuggageInfo VALUES ('P1013', 'BA001', 'BAG013', '22:00:00');
INSERT INTO LuggageInfo VALUES ('P1014', 'EK001', 'BAG014', '23:09:05');
INSERT INTO LuggageInfo VALUES ('P1015', 'SQ001', 'BAG015', '00:12:23');


CREATE TABLE Flight (
    flightId varchar(25) PRIMARY KEY,
    businessSeatsAvailability int(10),
    economySeatsAvailability int(25),
    departure varchar(25),
    destination varchar(25),
    departureDate date,
    arrivalDate date,
    airlineNo varchar(25) REFERENCES Airlines(airlineNo),
     CHECK(arrivalDate >= departureDate)
);


 INSERT INTO Flight VALUES ('AC123', 55, 20, 'Toronto', 'New York', '2023-05-01',
'2023-05-01', 'AC001');
 INSERT INTO Flight VALUES ('UA456', 77,86, 'Los Angeles', 'Chicago',
'2023-05-02', '2023-05-02', 'UA001');
 INSERT INTO Flight VALUES ('BA789', 66, 35, 'London', 'New York', '2023-05-03',
'2023-05-03', 'BA001');
 INSERT INTO Flight VALUES ('EK012', 55, 40, 'Dubai', 'Paris', '2023-05-04',
'2023-05-06', 'EK001');
 INSERT INTO Flight VALUES ('SQ345', 25, 45, 'Singapore', 'Tokyo', '2023-05-05',
'2023-05-06', 'SQ001');
 INSERT INTO Flight VALUES ('AF678', 30, 50, 'Paris', 'New York', '2023-05-02',
'2023-05-02', 'AF001');
 INSERT INTO Flight VALUES ('LH901', 35, 55, 'Frankfurt', 'Los Angeles',
'2023-05-12', '2023-05-12', 'LH001');
 INSERT INTO Flight VALUES ('QR234', 40, 60, 'Doha', 'London', '2023-05-28',
'2023-05-29', 'QR001');
 INSERT INTO Flight VALUES ('EY567', 45, 65, 'Abu Dhabi', 'New York', '2023-05-09',
'2023-05-11', 'EY001');
INSERT INTO Flight VALUES ('JL890', 50, 70, 'Tokyo', 'Los Angeles', '2023-05-10',
'2023-05-10', 'JL001');
INSERT INTO Flight VALUES ('AC246', 55, 75, 'Montreal', 'Toronto', '2023-05-11',
'2023-05-11', 'AC001');
INSERT INTO Flight VALUES ('UA369', 60, 80, 'New York', 'Los Angeles',
'2023-05-22', '2023-05-22', 'UA001');
INSERT INTO Flight VALUES ('BA482', 65, 85, 'London', 'Dubai', '2023-05-13',
'2023-05-15', 'BA001');
INSERT INTO Flight VALUES ('EK705', 70, 90, 'Dubai', 'New York', '2023-05-14',
'2023-05-16', 'EK001');
INSERT INTO Flight VALUES ('SQ938', 75, 95, 'Singapore', 'London', '2023-05-15',
'2023-05-15', 'SQ001');

CREATE INDEX idx_flight_id_dep_arr ON Flight (flightId, departureDate, arrivalDate);
CREATE TABLE FlightBaggage (
    flightId VARCHAR(25),
    departureDate DATE,
    arrivalDate DATE,
    baggageId VARCHAR(25),
    PRIMARY KEY (flightId, departureDate, arrivalDate, baggageId),
    FOREIGN KEY (flightId, departureDate, arrivalDate) REFERENCES Flight(flightId, departureDate, arrivalDate),
    FOREIGN KEY (baggageId) REFERENCES Baggage(baggageId)
);
ALTER TABLE FlightBaggage 
ADD CONSTRAINT unique_baggage_per_flight 
UNIQUE (flightId, baggageId);

INSERT INTO FlightBaggage VALUES ('AC123', '2023-05-01', '2023-05-01', 'BAG001');
INSERT INTO FlightBaggage VALUES ('AC123', '2023-05-01', '2023-05-01', 'BAG002');
INSERT INTO FlightBaggage VALUES ('UA456', '2023-05-02', '2023-05-02', 'BAG003');
INSERT INTO FlightBaggage VALUES ('BA789', '2023-05-03', '2023-05-03', 'BAG004');
INSERT INTO FlightBaggage VALUES ('EK012', '2023-05-04', '2023-05-06', 'BAG005');
INSERT INTO FlightBaggage VALUES ('EK012', '2023-05-04', '2023-05-06', 'BAG006');
INSERT INTO FlightBaggage VALUES ('SQ345', '2023-05-05', '2023-05-06', 'BAG007');
INSERT INTO FlightBaggage VALUES ('AF678', '2023-05-02', '2023-05-02', 'BAG008');
INSERT INTO FlightBaggage VALUES ('LH901', '2023-05-12', '2023-05-12', 'BAG009');
INSERT INTO FlightBaggage VALUES ('QR234', '2023-05-28', '2023-05-29', 'BAG010');
INSERT INTO FlightBaggage VALUES ('EY567', '2023-05-09', '2023-05-11', 'BAG011');
INSERT INTO FlightBaggage VALUES ('JL890', '2023-05-10', '2023-05-10', 'BAG012');
INSERT INTO FlightBaggage VALUES ('AC246', '2023-05-11', '2023-05-11', 'BAG013');
INSERT INTO FlightBaggage VALUES ('UA369', '2023-05-22', '2023-05-22', 'BAG014');
INSERT INTO FlightBaggage VALUES ('BA482', '2023-05-13', '2023-05-15', 'BAG015');
INSERT INTO FlightBaggage VALUES ('EK705', '2023-05-14', '2023-05-16', 'BAG014');


ALTER TABLE flight ADD INDEX flightId_index (flightId,airlineNo);

CREATE TABLE TicketAllocation (
  ticketId varchar(25) primary key,
  passengerId varchar(25),
  flightId varchar(25),
  airlineNo varchar(25),
  FOREIGN KEY (passengerId,airlineNo) REFERENCES reservation(passengerNo,airlineNo),
  FOREIGN KEY (flightId,airlineNo) REFERENCES Flight(flightId,airlineNo)
);
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T101', 'P1001', 'AC123', 'AC001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T102', 'P1002', 'UA369', 'UA001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T103', 'P1003', 'BA789', 'BA001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T104', 'P1004', 'EK012', 'EK001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T105', 'P1005', 'SQ345', 'SQ001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T106', 'P1006', 'AF678', 'AF001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T107', 'P1007', 'LH901', 'LH001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T108', 'P1008', 'QR234', 'QR001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T109', 'P1009', 'EY567', 'EY001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T110', 'P1010', 'JL890', 'JL001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T111', 'P1011', 'AC123', 'AC001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T112', 'P1012', 'UA369', 'UA001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T113', 'P1013', 'BA789', 'BA001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T114', 'P1014', 'EK012', 'EK001');
INSERT INTO TicketAllocation (ticketId, passengerId, flightId, airlineNo) VALUES ('T115', 'P1015', 'SQ345', 'SQ001');

CREATE TABLE TicketDetails (
  ticketId varchar(25) UNIQUE,
  ticketClass varchar(25),
  ticketStatus varchar(25),
  ticketFare int(10),
  bookingDate date,
  FOREIGN KEY (ticketId) REFERENCES TicketAllocation(ticketId),
  PRIMARY KEY (ticketId, ticketClass)
);

INSERT INTO TicketDetails 
VALUES ('T101', 'Economy', 'Confirmed', 5000, '2023-04-01');
INSERT INTO TicketDetails 
VALUES ('T102', 'Business', 'Confirmed', 15000, '2023-04-02');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T103', 'Economy', 'Pending', 3000, '2023-04-03');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T104', 'Economy', 'Confirmed', 2000, '2023-04-04');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T105', 'Economy', 'Confirmed', 4000, '2023-04-05');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T106', 'Business', 'Pending', 12000, '2023-04-06');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T107', 'Economy', 'Confirmed', 3500, '2023-04-07');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T108', 'Business', 'Confirmed', 18000, '2023-04-08');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T109', 'Economy', 'Pending', 4500, '2023-04-09');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T110', 'Business', 'Confirmed', 19000, '2023-04-10');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T111', 'Economy', 'Confirmed', 5500, '2023-04-11');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T112', 'Business', 'Pending', 22000, '2023-04-12');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T113', 'Business', 'Confirmed', 24000, '2023-04-13');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T114', 'Economy', 'Pending', 6000, '2023-04-14');
INSERT INTO TicketDetails (ticketId, ticketClass, ticketStatus, ticketFare,
bookingDate)
VALUES ('T115', 'Business', 'Confirmed', 25000, '2023-04-15');


DROP INDEX idx_ticketId ON TicketAllocation;
CREATE INDEX idx_ticketId_flightid ON TicketAllocation (ticketId,flightId);
CREATE TABLE BookedFlight (
  ticketId varchar(25),
  seatNo varchar(25),
  ticketClass varchar(25),
  flightNo varchar(25),
  PRIMARY KEY (seatNo, flightNo),
  FOREIGN KEY (ticketId,flightNo) REFERENCES TicketAllocation(ticketId,flightId),
  FOREIGN KEY (ticketId,ticketClass) REFERENCES TicketDetails(ticketId,ticketClass)
);
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T101', 'A1', 'Economy', 'AC123');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T102', 'B2', 'Business', 'UA369');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T103', 'C3', 'Economy', 'BA789');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T104', 'D4', 'Economy', 'EK012');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T105', 'E5', 'Economy', 'SQ345');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T106', 'F6', 'Business', 'AF678');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T107', 'G7', 'Economy', 'LH901');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T108', 'H8', 'Business', 'QR234');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T109', 'I9', 'Economy', 'EY567');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T110', 'J10', 'Business', 'JL890');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T111', 'A2', 'Economy', 'AC123');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T112', 'B3', 'Business', 'UA369');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T113', 'C4', 'Business', 'BA789');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T114', 'D5', 'Economy', 'EK012');
INSERT INTO BookedFlight (ticketId, seatNo, ticketClass, flightNo) VALUES ('T115', 'E6', 'Business', 'SQ345');