SELECT i.BillingCountry, COUNT(i.BillingCountry) Invoices
FROM Invoice i 
GROUP BY i.BillingCountry;