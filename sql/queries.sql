-- Query 1: Total Sales by Region
SELECT Region, SUM(Sales) as Total_Sales
FROM SampleSuperstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 2: Profit by Category
SELECT Category, SUM(Profit) as Total_Profit
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Query 3: Profit by Sub-Category (loss-makers first)
SELECT Sub_Category, SUM(Profit) as Total_Profit
FROM SampleSuperstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;

-- Query 4: Impact of Discount Bands on Average Profit
SELECT 
  CASE 
    WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount > 0 AND Discount <= 0.2 THEN 'Low Discount (0-20%)'
    WHEN Discount > 0.2 AND Discount <= 0.5 THEN 'Medium Discount (20-50%)'
    ELSE 'High Discount (50%+)'
  END as Discount_Band,
  AVG(Profit) as Avg_Profit
FROM SampleSuperstore
GROUP BY Discount_Band
ORDER BY Avg_Profit DESC;
