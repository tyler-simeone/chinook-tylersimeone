SELECT il.InvoiceId, COUNT(il.InvoiceLineId) LineItems
FROM InvoiceLine il 
GROUP BY InvoiceId;