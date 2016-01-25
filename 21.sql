-- Which sales agent made the most in sales over all?

SELECT
	max(a.TotalSales) as TotalSales,
	b.FirstName||' '||b.LastName as 'Sale Agent'
FROM (SELECT
				printf('%.2f', sum(a.Total)) as 'TotalSales',
				b.SupportRepId,
				strftime('%Y', a.InvoiceDate) as 'InvoiceYear'
			FROM Invoice as a
			LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
			GROUP BY
				b.SupportRepId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId