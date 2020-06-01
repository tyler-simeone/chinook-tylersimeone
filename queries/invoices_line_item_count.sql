SELECT il.InvoiceId, COUNT(*) InvoiceLines, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total
FROM InvoiceLine il
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId;