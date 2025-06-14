-- Server: HIMANSHU
-- Full Table
select * from [dbo].[pizza_sales];

-- KPI's
-- Total Revenue
select sum(total_price) as Total_Revenue from pizza_sales;

-- Average order Value
select sum(total_price)/count(distinct order_id) as Avg_Order_Value from pizza_sales;

-- Total Pizza's Sold
select sum(quantity) as Total_Quantity from pizza_sales;

-- Total Orders
select count(distinct order_id) as Total_Orders from pizza_sales;

-- Average Pizzas Per Order
select cast(cast(sum(quantity) as decimal(10, 2)) /
cast(count(distinct order_id) as decimal(10,2)) as decimal(10, 2)) Avg_Pizza_Per_Order from pizza_sales;


-- Chart Requirements
-- Daily trends for total orders:
SELECT DATENAME(DW, order_date) AS order_dayy,
       COUNT(DISTINCT order_id) AS Total_Orders_Per_Day
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

-- Hourly trend for total orders:
SELECT DATEPART (HOUR, order_time) as order_time,
        COUNT(DISTINCT order_id) as Total_Irders_per_Hour
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);

-- Percentage of sales by pizza category
SELECT pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 / 
                       (SELECT sum(total_price) from pizza_sales ) as PCT
FROM pizza_sales 
group by pizza_category;

-- Percentage of sales by pizza category for first month
SELECT pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 / 
                       (SELECT sum(total_price) from pizza_sales WHERE MONTH(order_date) = 1) as PCT
FROM pizza_sales 
WHERE MONTH(order_date) = 1
group by pizza_category;

-- Percentage of sales by pizza size
SELECT pizza_size, cast(sum(total_price) as DECIMAL (10, 2)) Total_Sales, cast(sum(total_price) * 100 / 
                       (SELECT sum(total_price) from pizza_sales ) as DECIMAL (10, 2)) as PCT
FROM pizza_sales 
group by pizza_size
ORDER BY PCT DESC;

-- Percentage of sales by pizza size for the first quarter
SELECT pizza_size, cast(sum(total_price) as DECIMAL (10, 2)) Total_Sales, cast(sum(total_price) * 100 / 
                       (SELECT sum(total_price) from pizza_sales WHERE DATEPART(QUARTER, order_date) = 1 )  as DECIMAL (10, 2)) as PCT
FROM pizza_sales 
WHERE DATEPART(QUARTER, order_date) = 1
group by pizza_size
ORDER BY PCT DESC;

-- Total Pizza Sales by Pizza Category
SELECT pizza_category, cast(sum(quantity) as DECIMAL (10, 2)) Total_Quantity
FROM pizza_sales
group by pizza_category;

-- Top 5 best sellers by total pizza's sold
SELECT TOP 5 pizza_name, cast(sum(quantity) as DECIMAL(10, 2)) Total_quantity 
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity DESC; 

-- Top 5 best sellers by total pizza's sold for January
SELECT TOP 5 pizza_name, cast(sum(quantity) as DECIMAL(10, 2)) Total_quantity 
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_name
ORDER BY Total_quantity DESC; 

-- Bottom 5 best sellers by total pizza's sold
SELECT TOP 5 pizza_name, cast(sum(quantity) as DECIMAL(10, 2)) Total_quantity 
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity;