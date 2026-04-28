SELECT *
FROM Product
WHERE price BETWEEN 10000000 AND 20000000;

SELECT p.product_name
FROM Product p
JOIN Order_Detail od ON p.product_id = od.product_id
JOIN `Order` o ON o.order_id = od.order_id
WHERE o.order_id = 'DH001';

SELECT c.*
FROM Customer c
JOIN `Order` o ON c.customer_id = o.customer_id
JOIN Order_Detail od ON o.order_id = od.order_id
JOIN Product p ON p.product_id = od.product_id
WHERE p.product_name = 'MacBook Air M2';
