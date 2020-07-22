SELECT i.*, COUNT(il.InvoiceLineId) InvoiceLines
FROM Invoice i
LEFT JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;