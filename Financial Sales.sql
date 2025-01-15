create database Financial_Sales

Select * from sales 

EXEC sp_rename 'sales', 'sales_data'

-- Total Revenue by Segment

select segment, SUM(Sales) as Revenue_by_Segment from sales_data
group by Segment
order by Revenue_by_segment desc

-- Total Revenue by Country

Select * from sales_data


select country, SUM(Sales) as Revenue_by_Country from sales_data
group by Country
order by Revenue_by_Country desc

-- Total Revenue by Product

select product, SUM(Sales) as Revenue_by_Product from sales_data
group by product
order by Revenue_by_Product desc


-- Revenue by Discount Band

Select * from sales_data

select discount_band, SUM(Sales) as Revenue_by_Discount_band from sales_data
group by discount_band
order by Revenue_by_Discount_band desc

-- Total No of units Sold 

Select * from sales_data

Select SUM(units_sold) as Total_Units_Sold from sales_data

-- Total Cost

select SUM(manufacturing_price) as Total_Cost from sales_data

-- Total Gross Sale

Select * from sales_data

select SUM(gross_sales) as Total_Gross_sales from sales_data

-- Total Profit

select sum(profit) as Total_Profit from sales_data

-- Total Revenue

Select sum(sales) as Total_Revenue from sales_data

-- Average Sales Price


select AVG(sale_price) as Avg_Sale_Price from sales_data

-- Average Manufacturing Price

select avg(manufacturing_price) as Avg_Maanufacturing_Price from sales_data

-- Total Profit Maring %

select sum(profit) / sum(sales) * 100 as Profit_Margin from sales_data

-- Total Discount Percentage

select * from sales_data 

select (sum(discounts) / sum(manufacturing_price)) * 100 as Discount_Percentage from sales_data

-- Sales Performance by Country 

select Country, sum(gross_sales) as Gross_Sale, sum(profit) as Profit, sum(units_sold) 
as Unit_Sold
from sales_data
group by Country
order by Profit desc