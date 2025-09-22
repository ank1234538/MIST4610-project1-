use br_ank12985;
-- List all customers 
Select CustomerID,FirstName,LastName,Email,Phone 
from Customers ;
-- All Events 
Select EventID,EventName,EventDate,TicketPrice 
From Events; 
-- Venue and Capacity 
Select VenueName, City,State, Capacity 
From Venue; 
-- Ticket purchases by Customer
SELECT t.TicketID, t.EventID, t.Quantity, t.PurchaseDate,c.FirstName,c.LastName
FROM Tickets t
JOIN Customers c on t.CustomerID= c.CustomerID
;
-- specific customer from customer 
Select * from Customers 
Where CustomerID=1;

-- Total revenue
SELECT Events.EventName, SUM(Tickets.Quantity * Events.TicketPrice) AS TotalRevenue
FROM Events
JOIN Tickets ON Events.EventID = Tickets.EventID
GROUP BY Events.EventName
ORDER BY TotalRevenue DESC;

-- Top 5 artists by Revenue
SELECT Artists.ArtistName, SUM(Tickets.Quantity * Events.TicketPrice) AS Revenue
FROM Artists
JOIN Events ON Artists.ArtistID = Events.ArtistID
JOIN Tickets ON Events.EventID = Tickets.EventID
GROUP BY Artists.ArtistName
ORDER BY Revenue DESC
LIMIT 5;

-- Events with any ticket sales 
SELECT e.EventName, v.VenueName, SUM(t.Quantity) AS TicketsSold, v.Capacity
FROM Events e
JOIN Tickets t ON e.EventID = t.EventID
JOIN Venue v ON e.VenueID = v.VenueID
GROUP BY e.EventID, e.EventName, v.VenueName, v.Capacity
HAVING SUM(t.Quantity) > 0;

-- Venues By Revenue 
SELECT Venue.VenueName,Artists.ArtistName, SUM(Tickets.Quantity * Events.TicketPrice) AS TotalRevenue
FROM Tickets
JOIN Events ON Tickets.EventID = Events.EventID
JOIN Venue ON Events.VenueID = Venue.VenueID
JOIN Artists ON Events.ArtistID = Artists.ArtistID
GROUP BY Venue.VenueName, Artists.ArtistName
ORDER BY TotalRevenue DESC;

-- Average ticket prices 
SELECT Venue.VenueName, AVG(Events.TicketPrice) AS AvgTicketPrice
FROM Venue
JOIN Events ON Venue.VenueID = Events.VenueID
GROUP BY Venue.VenueName
ORDER BY AvgTicketPrice DESC;

-- Most Customer spending 
SELECT c.FirstName, c.LastName, Spending.TotalSpent
FROM Customers c
JOIN (
    SELECT CustomerID, SUM(Tickets.Quantity * Events.TicketPrice) AS TotalSpent
    FROM Tickets
    JOIN Events ON Tickets.EventID = Events.EventID
    GROUP BY CustomerID
) AS Spending ON c.CustomerID = Spending.CustomerID
ORDER BY Spending.TotalSpent DESC
LIMIT 5;
