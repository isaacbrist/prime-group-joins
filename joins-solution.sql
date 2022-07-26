--1. Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

--2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

--3. Which warehouses have cheetos?
SELECT "warehouse"."warehouse", "products"."description" 
FROM "warehouse_product"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
JOIN "warehouse" ON "warehouse"."id"="warehouse_product"."warehouse_id"
WHERE "products"."description"= 'cheetos'

--4. Which warehouses have diet pepsi?
SELECT "warehouse"."warehouse", "products"."description" 
FROM "warehouse_product"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
JOIN "warehouse" ON "warehouse"."id"="warehouse_product"."warehouse_id"
WHERE "products"."description"= 'diet pepsi'
--5. Get the number of orders for each customer. 
--NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."id", "first_name", count(*) FROM "orders"
JOIN "addresses" ON "addresses"."customer_id"="orders"."id"
JOIN "customers" ON "customers"."id"="addresses"."customer_id"
GROUP BY "customers"."id"
--6. How many customers do we have?
SELECT count(*) FROM "customers"
--7. How many products do we carry?
SELECT count(*) FROM "products"
--8. What is the total available on-hand quantity of diet pepsi?
SELECT sum("warehouse_product"."on_hand") FROM "warehouse_product" 
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "products"."description" = 'diet pepsi'



SELECT sum("warehouse_product"."on_hand") FROM "products" 
JOIN "line_items" ON "line_items"."product_id"="products"."id"
WHERE "products"."description" = 'diet pepsi'






JOIN "cohort" ON "cohort"."id"="student"."cohort_id"
WHERE "cohort"."name" = 'Rigel';

-- Count all students in a cohort grouped by cohort name
SELECT "cohort"."name", count(*) FROM "student"
JOIN "cohort" ON "cohort"."id"="student"."cohort_id"
GROUP BY "cohort"."name";

SELECT sum("warehouse_product"."on_hand") from warehouse_
warehouse products and products