SELECT COUNT(i.InvoiceId) 
FROM InvoiceLine i
GROUP BY i.InvoiceId;