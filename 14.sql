-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT
	count(*) as countOfInvoices,
	BillingCountry
FROM Invoice
GROUP BY
	BillingCountry