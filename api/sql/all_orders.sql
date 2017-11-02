SELECT orders.order_id, 
orders.order_date, 
customers.customer_name, 
products.product_name, 
orders.ordered_quantity, 
prices.price_value, 
currency.currency_name
FROM orders
INNER JOIN customers ON orders.customer_id= customers.customer_id
INNER JOIN products ON orders.product_id=products.product_id
INNER JOIN prices ON orders.price_id= prices.price_id
INNER JOIN currency ON orders.currency_id=currency.currency_id;