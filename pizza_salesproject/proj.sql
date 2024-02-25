use sales
show tables

select * from ps

select sum(total_price) from ps

select pizza_name,sum(quantity),sum(total_price) from ps
group by pizza_name

select pizza_name,avg(quantity) as average from ps
group by pizza_name

select order_id,sum(total_price)/count(order_id) from ps 
group by order_id

SET SQL_SAFE_UPDATES = 0;

UPDATE ps
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

alter table ps
modify column order_date date

UPDATE ps
SET order_time = TIME(order_time)

alter table ps
modify column order_time time

select DAYNAME(order_date),MONTHNAME(order_date),YEAR(order_date),order_id,count(distinct order_id) from ps
group by order_date,order_id

select distinct DAYNAME(order_date) , count(order_id) from ps
group by DAYNAME(order_date)

select distinct MONTHNAME(order_date), count(order_id) from ps
group by MONTHNAME(order_date)

select pizza_category,sum(total_price) as sale,sum(total_price) * 100/(select sum(total_price) from ps) as percentage from ps
group by pizza_category

select pizza_size, sum(total_price) as sale,sum(total_price) * 100/(select sum(total_price) from ps) as percentage from ps
group by pizza_size

select pizza_category,sum(quantity) from ps
group by pizza_category

select pizza_name,sum(total_price) from ps
group by pizza_name
order by sum(total_price) desc limit 5


select pizza_name,sum(total_price) from ps
group by pizza_name
order by sum(total_price) asc limit 5

select pizza_name,sum(quantity) from ps 
group by pizza_name
order by sum(quantity) desc limit 5

select pizza_name,sum(quantity) from ps 
group by pizza_name
order by sum(quantity) asc limit 5




