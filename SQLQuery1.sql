--Selected all the rows
select * from dbo.pizza_sales

--Total revenue of the Total Pizza sold
select sum(total_price) as Total_Revenue from dbo.pizza_sales

--Avg Order Values
select sum(total_price)/ count(distinct order_id) as Avg_Order_value from pizza_sales

--Total Quantity of Pizza Sold
select sum(quantity) as Total_Pizza_Sold from pizza_sales

--Total number of orders
select count(distinct order_id) as Total_Order from pizza_sales

--Average Pizza's Per Order
select cast(sum(quantity) as decimal(10,2))/
cast(count(distinct order_id) as decimal(10,2)) 
as Avg_Pizza_per_Order from pizza_sales

--Daily Trend of orders
select datename(dw , order_date) as order_day, count(distinct order_id) as Total_Orders 
from pizza_sales
group by datename(dw , order_date)

--Monthly Trend of Orders
select datename(month , order_date) as order_month, count(distinct order_id) as Total_Orders 
from pizza_sales
group by datename(month , order_date)
order by Total_orders desc

--Percentage of Sales by Pizza Category for January
select pizza_category ,sum(total_price)as Total_sales ,  
sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales where Month(order_date) = 1 ) as PCT
from pizza_sales
where Month(order_date) = 1
group by pizza_category

--Percentage of Sales by Pizza Size for January
select pizza_size ,cast(sum(total_price) as decimal(10,2)) as Total_sales ,  
cast(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales where datepart(quarter, order_date) = 1) as decimal(10,2)) as PCT
from pizza_sales
where datepart(quarter, order_date) = 1
group by pizza_size 
order by PCT Desc

--Best revenue pizza
select top 5 pizza_name , sum(total_price) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue desc

--Best selling pizza
select top 5 pizza_name , sum(quantity) as Total_quantity from pizza_sales
group by pizza_name
order by Total_quantity desc

--Best Orders
select top 5 pizza_name , count(distinct order_id) as Total_order from pizza_sales
group by pizza_name
order by Total_order desc