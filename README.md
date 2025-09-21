# MIST4610-project1- Group 4
# Team Name: 
  63756 Group 4 
  
# Team Name:
  1. Karwan Gardi [@KarwanGardi](https://github.com/KarwanGardi)
   
  2. Afaf Khurram [@Ak87319](https://github.com/ak87319)

  3. Akash Kodali [@Amk1234538](https://github.com/Ank1234538)
     
  4. Olvia Lucas [@livlucas04-bit](https://github.com/livlucas04-bit)

# Problem Description
The Venue Management Database is designed to simplify and optimize the day-to-day operations of an event venue. It enables managers to efficiently track revenue, monitor venue capacity, and manage ticket distribution per guest. By consolidating these processes into one system, the database improves accuracy, reduces manual effort, and generates insights that support smarter business decisions. In turn, it helps the venue deliver a smooth, enjoyable experience for guests while maintaining strong financial performance and resource utilization.

# Data Model 
 This following data model shows the opeerations that are utlizated by an event management team. The operations include venues, artists, customers, and ticket sales. The Venue entity contains information such as name,location, and the capacity of each venue. The Events entity connects the Venue table and the Artist table, specifying which performer is performing at a certain event. The sales of tickets are tracked through the Tickets table, and customer information, including Customer ID, full name, and contact details, is stored in the Customer table. 
  The Venue and Artist tables have a one-to-many relationship with the Entity table because one venue can have multiple events, but only one event is tied to a single venue. Similarly, with the Artist table, one artist can perform at many different events, but one event is tied to one artist. 
    The Events table also has a one-to-many relationship with the Tickets table. This states that there could be many ticket sales for one event, but each ticket is uniquely tied to one event. This directly relates to the Customers table as well, as one customer can by multiple tickets but each ticket is related to one customer. 
    There is also a many-to-many relationship between Events ,Customers, and Tickets. While a customer can attend many events and events can have many customers, the linking party ( weak entity) is the tickets table. 

    <img width="1440" height="900" alt="Screenshot 2025-09-21 at 5 20 44 PM" src="https://github.com/user-attachments/assets/242569bb-3a6c-492e-8db6-274c0db09c52" />    
