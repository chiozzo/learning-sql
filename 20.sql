-- Which sales agent made the most in sales in 2010?

SELECT
	max(a.TotalSales) as TotalSales,
	a.InvoiceYear,
	b.FirstName||' '||b.LastName as 'Sale Agent'
FROM (SELECT
				printf('%.2f', sum(a.Total)) as 'TotalSales',
				b.SupportRepId,
				strftime('%Y', a.InvoiceDate) as 'InvoiceYear'
			FROM Invoice as a
			LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
			WHERE
				strftime('%Y', a.InvoiceDate) = '2010'
			GROUP BY
				b.SupportRepId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId