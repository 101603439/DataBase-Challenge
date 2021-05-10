--Steven Nguyen 101603439

-- Tour (TourName, Description)
-- PRIMARY KEY (TourName)
-- Event (EventYear, EventMonth, EventDay, Fee)
-- PRIMARY KEY (EventYear, EventMonth, EventDay)
-- FOREIGN KEY (TourName) references Tour
-- Booking (DateBooked, Payment)
-- FOREIGN KEY (EventYear, EventMonth, EventDay) references Event
-- Client (ClientID, Surname, GivenName, Gender)
-- PRIMARY KEY (ClientID)

DROP TABLE IF EXISTS Tour3439, Client3439, Event3439, Booking3439

CREATE TABLE Tour3439 (
    TourName    NVARCHAR(100)
,   Description NVARCHAR(500)
,   PRIMARY KEY (TourName)
);

CREATE TABLE Client3439 (
    ClientID    INT 
,   Surname     NVARCHAR(100)
,   GivenName   NVARCHAR(100)
,   Gender      NVARCHAR(1)
,   PRIMARY KEY (ClientID)
);

CREATE TABLE Event3439 (
    TourName    NVARCHAR(100)
,   EventMonth  NVARCHAR(3)
,   EventDay    INT
,   EventYear   INT
,   EventFee    MONEY
,   PRIMARY KEY (TourName, EventMonth, EventDay, EventYear)
);

CREATE TABLE Booking3439 (
    ClientID    INT
,   TourName    NVARCHAR(100)
,   EventMonth  NVARCHAR(3)
,   EventDay    INT
,   EventYear   INT
,   Payment     MONEY
,   DateBooked  DATE
,   PRIMARY KEY (TourName, EventMonth, EventDay, EventYear)
);

INSERT INTO Tour3439 (TourName, Description)  VALUES ('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region');
INSERT INTO Tour3439 (TourName, Description)  VALUES ('South', 'Tour of wineries and outlets of Mornington Penisula');
INSERT INTO Tour3439 (TourName, Description)  VALUES ('West', 'Tour of wineries and outlets of the Geelong and Otways region');
INSERT INTO Client3439 (ClientID, Surname, GivenName, Gender) VALUES (1, 'Price', 'Taylor', 'M');
INSERT INTO Client3439 (ClientID, Surname, GivenName, Gender) VALUES (2, 'Gamble', 'Ellyse', 'F');
INSERT INTO Client3439 (ClientID, Surname, GivenName, Gender) VALUES (3, 'Tan', 'Tilly', 'F');
INSERT INTO Client3439 (ClientID, Surname, GivenName, Gender) VALUES (101603439, 'Nguyen', 'Steven', 'M');
INSERT INTO Event3439 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('North', 'Jan', 9, 2016, 200);
INSERT INTO Event3439 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('North', 'Feb', 13, 2016, 225);
INSERT INTO Event3439 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('South', 'Jan', 9, 2016, 200);
INSERT INTO Event3439 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('South', 'Jan', 16, 2016, 200);
INSERT INTO Event3439 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('West', 'Jan', 29, 2016, 225);
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (1, 'North', 'Jan', 9, 2016, 200, '10/Dec/15');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (2, 'North', 'Jan', 9, 2016, 200, '16/Dec/15');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (1, 'North', 'Feb', 13, 2016, 225, '8/Jan/16');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (2, 'North', 'Feb', 13, 2016, 125, '14/Jan/16');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (3, 'North', 'Feb', 13, 2016, 225, '3/Feb/16');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (1, 'South', 'Jan', 9, 2016, 200, '10/Dec/15');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (2, 'South', 'Jan', 16, 2016, 200, '18/Dec/15');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (3, 'South', 'Jan', 16, 2016, 200, '9/Jan/16');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (2, 'West', 'Jan', 29, 2016, 225, '17/Dec/15');
INSERT INTO Booking3439 (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES (3, 'West', 'Jan', 29, 2016, 200, '18/Dec/15');


Select * from Tour3439
