CREATE DEFINER ='root'@'localhost'  PROCEDURE 'CancelBooking'(IN BookingID INT)
BEGIN
    -- Delete the booking record with the specified BookingID
    DELETE FROM booking 
    WHERE booking_id = BookingID;
    
    -- Optionally, you can add a confirmation message if needed
    SELECT CONCAT("Booking ID ", BookingID, " canceled.") AS ConfirmMessage;
END;