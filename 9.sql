-- How many Invoices were there in 2009 and 2011?

SELECT
	count(InvoiceId) as 'countInvoices',
FROM Invoice
WHERE
	'2009' = strftime('%Y', InvoiceDate)
	or
	strftime('%Y', InvoiceDate) = '2011';

-- What are the respective total sales for each of those years?

SELECT
	count(InvoiceId) as 'countInvoices',
	strftime('%Y', InvoiceDate) as 'InvoiceYear',
	printf('%.2f', sum(Total)) as 'AnnualSalesTotal'
FROM Invoice
WHERE
	'2009' = strftime('%Y', InvoiceDate)
	or
	strftime('%Y', InvoiceDate) = '2011'
GROUP BY
	strftime('%Y', InvoiceDate)