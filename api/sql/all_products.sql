SELECT products.product_id, 
products.product_name, 
 prices.price_value, 
 currency.currency_name
FROM products 
INNER JOIN prices ON    products.price_id= prices.price_id
INNER JOIN currency ON products.currency_id=currency.currency_id