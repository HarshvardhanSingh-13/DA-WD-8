# Showing the Dataset
use myntra;
select * from products;

# 1. Brand Report Card
# 2. Which product_category of any brand is sold the most?

# 3. List top 5 brands which has sold most number of tshirts



# 4. List top 5 brands which has sold most number of shirts
# 5. List top 5 brands which has sold most number of jeans
# 6. List top 5 brands which has sold most number of dresses
# 7. Most popular product name listed in Myntra

SELECT product_name, COUNT(product_name) FROM products 
		GROUP BY product_name
		ORDER BY COUNT(product_name) desc;

# 8. Number of products sold for every rating (0 - 5)


select rating, sum(rating_count) from products group by rating
	order by sum(rating_count) asc;

# 9. Number of products sold for every rating by bike
# 10. Number of products sold for every rating in tshirt category