CREATE PROCEDURE UpdateBooking (
    IN BookingID INT,       -- Input parameter for the booking ID to be updated
    IN BookingDate DATE     -- Input parameter for the new booking date
)
BEGIN
    -- Update the booking date for the specified booking ID
    UPDATE booking 
    SET date = BookingDate 
    WHERE booking_id = BookingID;

    -- Confirm that the booking has been updated
    SELECT CONCAT("Booking ", BookingID, " updated") AS Confirm;
END;