SELECT SUM(i.Total)
FROM Invoice i
WHERE i.InvoiceDate LIKE "2009-%" ;

SELECT SUM(i.Total)
FROM Invoice i
WHERE i.InvoiceDate LIKE "2011-%" ;