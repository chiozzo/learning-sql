-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT
	b.FirstName||' '||b.LastName as 'Sale Agent',
	a.*
FROM (SELECT
				b.SupportRepId,
				a.*
			FROM Invoice as a
			LEFT JOIN Customer as b ON a.CustomerId = b.CustomerId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId