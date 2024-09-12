CREATE PROCEDURE CheckBooking(
    booking_date DATE,   -- Input parameter for the date of the booking
    table_number INT     -- Input parameter for the table number to check
)
BEGIN
    DECLARE bookedTable INT DEFAULT 0; -- Variable to store the count of bookings

    -- Count the number of bookings for the specified date and table number
    SELECT COUNT(*)
    INTO bookedTable  -- Store the result in the bookedTable variable
    FROM Bookings 
    WHERE BookingDate = booking_date AND TableNumber = table_number;

    -- Check if there are any bookings for the specified table and date
    IF bookedTable > 0 THEN
        -- If there are bookings, return that the table is already booked
        SELECT CONCAT("Table ", table_number, " is already booked") AS "Booking status";
    ELSE
        -- If there are no bookings, return that the table is not booked
        SELECT CONCAT("Table ", table_number, " is not booked") AS "Booking status";
    END IF;
END;