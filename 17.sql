-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
	count(a.InvoiceLineId) as countOfItemsOnInvoice,
	b.*
FROM InvoiceLine as a
LEFT JOIN Invoice as b ON a.InvoiceId = b.InvoiceId
GROUP BY
	a.InvoiceId