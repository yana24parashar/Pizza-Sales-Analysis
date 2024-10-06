-- distribution of pizza based on category

SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category;