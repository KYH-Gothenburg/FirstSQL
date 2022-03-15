USE classicmodels;

SELECT * FROM customers;

SELECT * FROM employees;

SELECT * FROM products;


SELECT e.firstName, e.lastName FROM employees e
JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
JOIN orders o ON c.customerNumber=o.customerNumber
JOIN orderdetails od ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
WHERE p.productName='Collectable Wooden Train'
GROUP BY  e.firstName, e.lastName
ORDER BY e.lastName;

SELECT * FROM products WHERE quantityInStock < 100;

SELECT * FROM customers WHERE customerName LIKE '%Gift%' AND country='USA';

SELECT DISTINCT lastName FROM employees;

SELECT * FROM products LIMIT 3, 10;