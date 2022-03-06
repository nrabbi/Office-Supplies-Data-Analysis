SELECT 
    Region, 
    Sub_Category, 
    SUM(Quantity) As Quantity, 
    ROUND(SUM(Sales), 2) AS Sales, 
    ROUND(SUM(Profit), 2) AS Profit
FROM `week-3-processing-with-sql.office.supplies`
WHERE Category = "Office Supplies"
GROUP BY Region, Sub_Category
ORDER BY Region;