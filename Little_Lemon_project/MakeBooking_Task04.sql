CREATE PROCEDURE MakeBooking (IN BookingID INT, IN CustomerID INT, IN TableNo INT, IN BookingDate DATE)
BEGIN
INSERT INTO bookings (booking_id, customer_id, table_no, date) VALUES (BookingID, CustomerID, TableNo, BookingDate); 
END