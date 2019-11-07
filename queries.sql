-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productName, categoryName 
from product as p
join category as c 
ON p.id = c.id; 

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id, s.CompanyName 
from Order as o 
join Shipper as s 
on o.id = s.id 
where o.OrderDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, od.Quantity 
FROM OrderDetail as od 
JOIN Product as p 
ON p.Id = od.ProductId 
WHERE od.OrderId = 10251 ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT OrderID, CustomerName, LastName as EmployeeLastName 
FROM Order as o 
JOIN Customer as c 
ON c.Id = o.CustomerId 
JOIN Employee as e 
ON e.id = o.EmployeeId;