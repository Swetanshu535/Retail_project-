create database retail_p;
use retail_p;
select * from retail_analysis;
-- Display the Item Name and Total Annual Units for all items belonging to the 'Grocery' category.
select Item_Name,Total_Annual_Units,Category
from retail_analysis
where Category="Grocery";

-- Find out which item generated the highest Total Sales Value and show its Item Name and Category.
select Item_Name,Total_Sales_Value,Category
from retail_analysis
order by Total_Sales_Value desc;

-- Calculate the average monthly demand (Jan to Dec) for each item and display Item ID, Item Name, and their Average Monthly Demand.
select Item_ID,Item_Name,avg(Total_Sales_Value)
from retail_analysis
group by Item_ID,Item_Name;

-- List all Apparel category items where the Total Annual Units are less than 10,000 units.
select Category,Total_Annual_Units
from retail_analysis
where Total_Annual_Units < 10000;

-- Show the Item Name, Total Sales Value, and Price Per Unit for products that had a Price Per Unit greater than 50.
select Item_ID,Total_Sales_Value,Price_Per_Unit
from retail_analysis
where Price_Per_Unit > 50;

-- Rank the items based on their Total Sales Value in descending order and display Item ID, Item Name, and their Sales Rank.
select Item_ID,Item_Name,rank() over (partition by Total_Sales_Value order by Item_ID)
from retail_analysis



