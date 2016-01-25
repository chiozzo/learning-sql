-- Provide a query that shows the # of customers assigned to each sales agent.

SELECT
	count(a.CustomerId) as countOfCustomers,
	b.FirstName||' '||b.LastName as 'SaleAgent'
FROM Customer as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId
GROUP BY
	b.FirstName||b.LastName