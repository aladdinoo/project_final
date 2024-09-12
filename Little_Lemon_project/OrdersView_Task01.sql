CREATE VIEW OrdersView AS
SELECT 
    OrderID, 
    Quantity, 
    Cost  -- Assuming 'Cost' is a column in the 'orders' table
FROM 
    orders
WHERE 
    Quantity > 2;  -- Filters orders with a quantity greater than 2