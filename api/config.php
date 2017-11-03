<?php

// Adatbázis kapcsolat beállításai.
define("DBNAME", "yellow-apishf");
define("DBUSER", "yellow-apishf");
define("DBPASSWORD", "hcW1YKzZOv781NyN");

// Routing (útválasztó) beállításai.
define("PREFIX", "api");
define("SQLDIR", "sql");
$router = array(
    // Select kérések.
    "/customers" => "all_customer.sql",
    "/products" => "all_products.sql",
    "/orders" => "all_orders.sql",
   // "/customers/:id" => "one_customer.sql",
    //"/customers/limit/:s" => "limit_customer.sql",
    // Insert kérések.
   // "/customers/insert" => "add_customer.sql",
    // Update kérések.
   // "/customers/update/:id" => "update_customer.sql",
    // Delete kérések.
   // "/customers/delete/:id" => "delete_customer.sql"
);