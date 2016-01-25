-- Provide a query that shows the total sales per country. Which country's customers spent the most?

SELECT
	printf('%.2f', sum(Total)) as 'CountrySalesTotal',
	b.Country
FROM Invoice as a
LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId
GROUP BY
	b.Country
ORDER BY
	sum(Total) DESC