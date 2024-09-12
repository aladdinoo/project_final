SELECT 
    customers.CustomerID, 
    customers.FullName, 
    orders.OrderID, 
    orders.Cost, 
    menus.MenuName
FROM 
    customers 
INNER JOIN 
    orders ON customers.CustomerID = orders.CustomerID
INNER JOIN 
    menus ON orders.MenuID = menus.MenuID
INNER JOIN 
    menuitems ON menuitems.MenuItemsID = menus.MenuItemsID
WHERE 
    orders.Cost > 150 
ORDER BY 
    customers.CustomerID;