CREATE DATABASE Ola;
USE Ola;

 -- Show sample data 
SELECT * FROM ola.bookings
LIMIT 100;

  -- Count total rows in the table
SELECT COUNT(*) AS total_rows
FROM ola.bookings;


#1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS
SELECT *
FROM ola.bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;


-- If the view already exists and you want to replace it, use:
CREATE OR REPLACE VIEW Successful_Bookings AS
SELECT *
FROM ola.bookings
WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:
CREATE VIEW Avg_Ride_Distance_By_Vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) 
AS Avg_Ride_Distance FROM ola.bookings
GROUP BY Vehicle_Type;

SELECT * FROM Avg_Ride_Distance_By_Vehicle;

 -- DROP VIEW IF EXISTS Cancelled_Rides_By_Customer;

#3. Get the total number of cancelled rides by customers:
CREATE VIEW Cancelled_Rides_By_Customer_Count AS
SELECT COUNT(*) AS Total_Cancelled_Rides_by_Customer
FROM ola.bookings
WHERE cancelled_Rides_by_Customer = 1;

SELECT * FROM Cancelled_Rides_By_Customer_Count;


-- Get the total number of cancelled rides details by customers:
CREATE VIEW Cancelled_Rides_By_Customer_Summary AS
SELECT
    Customer_ID, -- You'll need a Customer_ID column for this
    COUNT(*) AS Total_Cancelled_Rides
FROM
    ola.bookings
WHERE
    Booking_Status = 'Cancelled_by_Customer'
GROUP BY
    Customer_ID;

-- Try checking what values are actually stored in Booking_Status using:
SELECT DISTINCT Booking_Status 
FROM ola.bookings;

SELECT * FROM Cancelled_Rides_By_Customer;

#4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW Top_5_Customers AS 
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

SELECT * FROM Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Rides_cancelled_by_drivers_P_C_Issues AS 
SELECT COUNT(*) FROM bookings
WHERE Cancelled_Rides_By_Driver = 'Personal_or_Car_related_issue';

SELECT * FROM Rides_cancelled_by_drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Dean bookings:
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_ratings,
MIN(Driver_Ratings) AS min_ratings
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

SELECT MIN(Booking_Value) FROM ola.bookings;

SELECT COUNT(*) 
FROM ola.bookings
WHERE Booking_Value IS NOT NULL;

SELECT DISTINCT Booking_Value 
FROM ola.bookings
LIMIT 20;

#7. Retrieve all riders where payment was made using UPI:
CREATE VIEW UPI_Payment AS 
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';


#8. Find the average customer rating per vehicle type:
CREATE VIEW AVG_Customer_Rating AS 
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings 
GROUP BY Vehicle_Type; 

#9. Calculate the total booking value of rides completed successfuly:
CREATE VIEW total_successful_ride_value AS
SELECT SUM(Booking_Value) AS total_successful_ride_value
FROM bookings 
WHERE Booking_Status ='Success';

#10. List all incomplete rides along with the reason:
CREATE VIEW Incomplete_Rides_Reason AS 
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = '1';


#1. Retrieve all successful bookings:
SELECT * FROM bookings WHERE Booking_Status = 'Success';

 #2. Find the average ride distance for each vehicle type:
 SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
 Vehicle_Type;
 
 #3. Get the total number of cancelled rides by customers:
 SELECT * FROM Cancelled_Rides_By_Customer_Count;
 
 #4. List the top 5 customers who booked the highest number of rides:
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY
 Customer_ID ORDER BY total_rides DESC LIMIT 5;
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 SELECT COUNT(*) FROM bookings WHERE cancelled_Rides_by_Driver = 'Personal & Car
 related issue';
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
bookings WHERE Vehicle_Type = 'Prime Sedan';
 
  #7. Retrieve all rides where payment was made using UPI:
  SELECT * FROM bookings WHERE Payment_Method = 'UPI';
 
 #8. Find the average customer rating per vehicle type:
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings
 GROUP BY Vehicle_Type;
 
  #9. Calculate the total booking value of rides completed successfully:
  SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
  Booking_Status = 'Success';
 
  #10. List all incomplete rides along with the reason:
  SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides ='Yes';










 

