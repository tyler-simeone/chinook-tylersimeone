SELECT i.BillingCountry, SUM(i.Total) TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY TotalSales DESC;