use blinkit;
show tables;
 #Show all data from the table?
select * from blinkit_cleaned;

#Show only Order_ID, City and Category?
select Order_ID , City , Category
from blinkit_cleaned;

#Find total number of order?
select count(Order_ID) AS Total_Orders
from blinkit_cleaned;

#Show unique cities?
select distinct City
from blinkit_cleaned;

#find total quantity sold ?
select sum(Quantity) AS Total_Quantity
from blinkit_cleaned;

#category wise total order?
select Category, count(Order_ID) AS
Total_orders
from blinkit_cleaned
group by Category;

#City wise total order?
select City, count(Order_ID) AS
Total_orders
from blinkit_cleaned
group by city;

#Category wise total revenue?
select Category, sum(Price*Quantity)
AS Total_Revenue
from blinkit_cleaned
group by Category;

#average delivery time by city?
select City, avg(Delivery_Time_Min) AS
avg_Delivery_time
from blinkit_cleaned
group by City;

#top 5 highest price products?
select * from blinkit_cleaned
order by Price desc limit 5;

#category with highest revenue ?
select Category, sum(Price * Quantity)
AS Revenue from blinkit_cleaned
group by Category
order by Revenue desc limit 1;

#top 5 cities with higest orders?
select City, count(Order_ID) AS Order_Count
from blinkit_cleaned
group by City
order by Order_Count desc limit 5;

#avg customer rating by category?
select Category, avg(Customer_Rating) AS Avg_Rating
from blinkit_cleaned
group by Category;

#count cancelled orders?
select count(*) AS Cancelled_Orders
from blinkit_cleaned where Order_status = 'Cancelled';

#month wise total order?
select month(Order_Date) AS Month,
count(Order_ID) AS Total_Orders
from blinkit_cleaned
group by Month(Order_Date); 

#which payment method is used the most?
select Payment_Method, count(*) AS Total_Transections
from blinkit_cleaned
group by Payment_Method
order by Total_Transections desc;

#which city genrates highest revenue?
select City, sum(Price * Quantity) AS Revenue
from blinkit_cleaned
group by City
order by Revenue desc;
