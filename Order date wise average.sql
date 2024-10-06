-- group order by date and average of pizzas per day
SELECT 
    AVG(quantity)
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;