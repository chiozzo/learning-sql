-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
	a.Total as 'InvoiceTotal',
	a.CustomerName as 'CustomerName',
	a.Country as Country,
	b.FirstName||' '||b.LastName as 'SaleAgent'
FROM (SELECT
				b.SupportRepId,
				b.CustomerId,
				b.FirstName||' '||b.LastName as 'CustomerName',
				b.Country,
				a.InvoiceId,
				a.Total
			FROM Invoice as a
			LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId