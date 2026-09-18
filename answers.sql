```sql
-- A. Find the total and average sales
SELECT 
    SUM(Sales) AS total_sales,
    AVG(Sales) AS avg_sales
FROM sales;


-- B. Display the number of customers in each region
-- in decreasing order of number of customers
SELECT 
    Region,
    COUNT(*) AS no_of_customers
FROM customer
GROUP BY Region
ORDER BY no_of_customers DESC;


-- C. Find the region having maximum customers
SELECT 
    Region,
    COUNT(*) AS `max(no_of_customers)`
FROM customer
GROUP BY Region
ORDER BY COUNT(*) DESC
LIMIT 1;


-- D. Find the number and ID of products sold
-- in decreasing order of products sold
SELECT 
    Product_ID AS product_id,
    COUNT(*) AS no_of_products_sold
FROM sales
GROUP BY Product_ID
ORDER BY no_of_products_sold DESC;


-- E. Find customers from Atlantic region who purchased TABLES
-- and display the number of tables purchased
SELECT 
    c.Customer_Name AS customer_name,
    COUNT(*) AS no_of_tables_purchased
FROM customer c
JOIN sales s
    ON c.Customer_ID = s.Customer_ID
JOIN product p
    ON s.Product_ID = p.Product_ID
WHERE c.Region = 'Atlantic'
  AND p.Product_Name = 'TABLES'
GROUP BY c.Customer_ID, c.Customer_Name;
```
