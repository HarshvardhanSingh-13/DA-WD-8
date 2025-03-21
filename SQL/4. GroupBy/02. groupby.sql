# Showing the Dataset
use myntra;

select * from products;

-- 1. Finding the names of unique brands
select distinct brand_name from products;

-- 2. Finding the number of unique brands
select count(distinct brand_name)  from products;

-- 3. Finding the number of products in each brands
select brand_tag , count(product_tag) from products group by brand_tag;

SELECT brand_tag, COUNT(distinct(product_tag)), avg(marked_price) 
from products group by brand_tag;

-- No of products in each product category *(count)

SELECT product_tag, count(product_name) FROM products
GROUP BY product_tag;

-- Most Expensive Brand

SELECT brand_name, avg(discounted_price) FROM products
GROUP BY brand_name ORDER BY avg(discounted_price) desc LIMIT 1;

-- Most Expensive Category

SELECT product_tag, avg(discounted_price) FROM products
GROUP BY product_tag ORDER BY avg(discounted_price) desc LIMIT 1;

-- Top 5 brand generated maximum revenue

SELECT brand_tag, SUM(rating_count*discounted_price) as revenue FROM products
	GROUP BY brand_tag 
		ORDER BY revenue desc LIMIT 5;
        
-- Top 5 brand sold maximum products

SELECT brand_tag, SUM(rating_count) as s FROM products
	GROUP BY brand_tag
		ORDER BY s desc limit 5;

-- Top 5 categories sold the most along with their revenue | sort based on revenue

SELECT product_tag, SUM(rating_count), SUM(discounted_price*rating_count) as revenue FROM products
	GROUP BY product_tag
		ORDER BY revenue desc limit 5;

-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory

select brand_tag , count(product_name) as 'product_count' from products 
group by brand_tag
order by product_count desc limit 5;

-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag , sum(rating_count) as 'products_sold' from gfg.products 
group by brand_tag
order by products_sold desc limit 10;

-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_tag , round(avg(discounted_price)) as 'price' from products 
where brand_tag != 'dyson'
group by brand_tag 
order by price desc limit 5;

-- 7. Finding the top 5 least expensive brands based on their discounted price
select brand_tag , round(avg(discounted_price)) as 'price' from gfg.products 
group by brand_tag 
order by price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 
select product_tag , sum(rating_count) as 'price' from gfg.products 
group by product_tag 
order by price desc limit 10;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag , avg(discount_percent) as 'price' from products 
group by brand_tag 
order by price desc limit 10;

-- 10. Finding the top 5 most expensive product categories
select product_tag , round(avg(discounted_price)) as 'price' from gfg.products 
group by product_tag 
order by price desc limit 10;


-- 11. Which category of any specific brand is sold the most?
select product_tag, brand_name,  sum(rating_count)  as 'sold' 
	from products 
		group by product_tag, brand_name 
		order by sold desc limit 10;