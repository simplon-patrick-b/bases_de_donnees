SELECT Customers.CustomerID, CompanyName, ContactName, count(OrderID) 
FROM Customers inner join Orders
on Customers.CustomerID = Orders.CustomerID
group by Customers.CustomerID
order by count(OrderID) desc;