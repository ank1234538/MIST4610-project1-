Use br_ank1295;
Create Table Customers ( 
 CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL ,
    Phone VARCHAR(20),
    JoinDate DATE
    );
    
Create Table Artists ( 
ArtistID int Primary Key,
ArtistName VARCHAR(100) NOT NULL, 
Genre VARCHAR (50) not null , 
Origin VARCHAR(100) 
);

Create Table Venue ( 
VenueID int Primary Key ,
VenueName VarChar(100) NOT NULL ,
City VarChar(50) NOT NULL,
State VARCHAR (50) NOT NULL,
Capacity INT not NULL 
);

Create Table Events ( 
EventID INT Primary Key ,
EventName VarChar(100) NOT NULL , 
ArtistID INT NOT NULL ,
VenueID INT NOT NULL ,
EventDate DATE NOT NULL ,
TicketPrice DECIMAL (10,2) NOT NULL ,
FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
FOREIGN KEY (VenueID) REFERENCES Venue(VenueID) 
);


CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    EventID INT NOT NULL,
    CustomerID INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
    PurchaseDate DATE ,
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );

Insert into Customers(CustomerID,FirstName,LastName,Email,Phone,JoinDate) 
VALUES 
(1, 'Michael', 'Smith', 'michael.smith@outlook.com', '508-292-4439', '2021-07-22'),
(2, 'Sophia', 'Williams', 'sophia.williams@gmail.com', '509-242-4604', '2023-01-09'),
(3, 'Daniel', 'Brown', 'daniel.brown@gmail.com', '472-475-6927', '2020-11-30'),
(4, 'Olivia', 'Davis', 'olivia.davis@yahoo.com', '305-745-2970', '2023-05-18'),
(5, 'Ethan', 'Miller', 'ethan.miller@gmail.com', '925-612-9615', '2022-08-10'),
(6, 'Ava', 'Garcia', 'ava.garcia@yahoo.com', '707-855-5126', '2021-09-05'),
(7, 'James', 'Martinez', 'james.martinez@gmail.com', '5', '750-0520-254', '2023-02-14'),
(8, 'Isabella', 'Rodriguez', 'isabella.rodriguez@yahoo.com', '791-5870-230', '2020-06-25'),
(9, 'Liam', 'Anderson', 'liam.anderson@gmail.com', '727-5278-993', '2022-12-01')




Select * from Customers;
Insert into Artists( ArtistID,ArtistName,Genre,Origin) 
Values 
(1, 'Drake', 'Hip-Hop', 'Toronto, Canada'),
(2, 'Taylor Swift', 'Pop', 'Pennsylvania, USA'),
(3, 'Kendrick Lamar', 'Rap', 'Compton, USA'),
(4, 'Bad Bunny', 'Reggaeton', 'San Juan, Puerto Rico'),
(5, 'The Weeknd', 'R&B', 'Toronto, Canada'),
(6, 'Ed Sheeran', 'Pop', 'Halifax, UK'),
(7, 'Eminem', 'Rap', 'Detroit, USA'),
(8, 'Post Malone', 'Hip-Hop', 'Syracuse, USA'),
(9, 'Doja Cat', 'Pop/Rap', 'Los Angeles, USA'),
(10, 'Travis Scott', 'Hip-Hop', 'Houston, USA');

Insert Into Venue ( VenueID,VenueName,City,State,Capacity) 
VALUES 
(1, 'Madison Square Garden', 'New York', 'NY', 20789),
(2, 'Staples Center', 'Los Angeles', 'CA', 20000),
(3, 'Mercedes-Benz Stadium', 'Atlanta', 'GA', 71000),
(4, 'Soldier Field', 'Chicago', 'IL', 61500),
(5, 'AT&T Stadium', 'Arlington', 'TX', 80000),
(6, 'Hard Rock Stadium', 'Miami', 'FL', 65326),
(7, 'Allegiant Stadium', 'Las Vegas', 'NV', 65000),
(8, 'SoFi Stadium', 'Inglewood', 'CA', 70240),
(9, 'Gillette Stadium', 'Foxborough', 'MA', 65878),
(10, 'MetLife Stadium', 'East Rutherford', 'NJ', 82500);



Insert into Events( EventID,EventName,ArtistID,VenueID,EventDate,TicketPrice) 
VALUES 
(1, 'Drake - Scorpion Tour', 1, 1, '2025-06-15', 120.00),
(2, 'Taylor Swift - Eras Tour', 2, 2, '2025-07-10', 250.00),
(3, 'Kendrick Lamar - Conscious Beats Live', 3, 3, '2025-08-05', 180.00),
(4, 'Bad Bunny - Summer Vibes Festival', 4, 4, '2025-09-01', 200.00),
(5, 'The Weeknd - After Hours Experience', 5, 5, '2025-10-12', 220.00),
(6, 'Ed Sheeran - Divide Tour', 6, 6, '2025-11-03', 150.00),
(7, 'Eminem - Rap God Reunion', 7, 7, '2026-01-20', 300.00),
(8, 'Post Malone - Rockstar Nights', 8, 8, '2026-02-14', 175.00),
(9, 'Doja Cat - Planet Her Tour', 9, 9, '2026-03-25', 160.00),
(10, 'Travis Scott - Utopia World Tour', 10, 10, '2026-04-18', 210.00);

INSERT INTO Tickets (TicketID, EventID, CustomerID, Quantity, PurchaseDate)
VALUES
(1, 1, 2, 2, '2025-05-01'),
(2, 2, 3, 4, '2025-05-02'),
(3, 3, 5, 1, '2025-05-03'),
(4, 4, 7, 3, '2025-05-04'),
(5, 5, 9, 2, '2025-05-05'),
(6, 6, 1, 1, '2025-05-06'),
(7, 7, 4, 5, '2025-05-07'),
(8, 8, 6, 2, '2025-05-08'),
(9, 9, 8, 3, '2025-05-09'),
(10, 10, 2, 1, '2025-05-10');



-- firguee out how to change ticketID even though it is a primary KEY 
