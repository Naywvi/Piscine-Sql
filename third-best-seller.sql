SELECT
CASE
WHEN count(customers.FirstName) = 18 THEN emp.LastName || ' ' || emp.FirstName 
WHEN count(customers.FirstName) IS NULL THEN 'coucou'
END as '3rd best seller'
FROM employees as emp
INNER JOIN customers ON customers.SupportRepId = emp.EmployeeId
GROUP BY emp.LastName
