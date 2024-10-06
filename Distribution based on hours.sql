-- distribution of orders based on hours

SELECT 
    HOUR(order_time) AS hours, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY order_time;