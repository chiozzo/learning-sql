-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT
	b.FirstName||' '||b.LastName as CustomerFullName,
	a.InvoiceId,
	a.InvoiceDate,
	a.BillingCountry
FROM Invoice as a
LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
WHERE
	b.Country = 'Brazil'