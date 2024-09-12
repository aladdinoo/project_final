CREATE PROCEDURE GetMaxQuantity()
BEGIN
    -- This procedure is designed to retrieve the maximum quantity from the 'orders' table.
    
    SELECT MAX(orders.Quantity)  -- This query selects the maximum value from the 'Quantity' column.
    FROM orders;                 -- Specifies that the data is being retrieved from the 'orders' table.
END;