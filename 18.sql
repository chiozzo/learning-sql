-- Provide a query that shows total sales made by each sales agent.

SELECT
	a.countOfInvoices,
	b.FirstName||' '||b.LastName as 'SaleAgent'
FROM (SELECT
				b.SupportRepId,
				count(a.Invoiceid) as countOfInvoices
			FROM Invoice as a
			LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
			GROUP BY
				b.SupportRepId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId