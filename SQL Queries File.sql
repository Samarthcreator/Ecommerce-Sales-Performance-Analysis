SELECT ROUND(SUM(Sales),2) AS Total_Revenue, ROUND(SUM(Profit),2) AS Total_Profit,COUNT(DISTINCT Order_ID) AS Total_Orders, COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM superstore;

SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM superstore;

SELECT 
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT 
    Sub_Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;

SELECT 
    Sub_Category,
    ROUND(AVG(Discount)*100,2) AS Avg_Discount_Percentage,
    ROUND(AVG(Profit),2) AS Avg_Profit_Per_Order
FROM superstore
WHERE Sub_Category = 'Tables'
GROUP BY Sub_Category;

SELECT 
    Sub_Category,
    ROUND(AVG(Discount)*100,2) AS Avg_Discount_Percentage,
    ROUND(AVG(Profit),2) AS Avg_Profit_Per_Order
FROM superstore
GROUP BY Sub_Category
ORDER BY Avg_Discount_Percentage DESC;

SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM superstore
GROUP BY Region
ORDER BY Total_Profit ASC;

SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
WHERE Sub_Category = 'Tables'
GROUP BY Region
ORDER BY Total_Profit ASC;

SELECT 
    Customer_ID,
    ROUND(SUM(Sales),2) AS Customer_Total_Sales
FROM superstore
GROUP BY Customer_ID
ORDER BY Customer_Total_Sales DESC
LIMIT 10;




