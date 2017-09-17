
USE grocery_list;

-- ---
-- 'customer' data
-- 
-- ---
insert into customer (firstName) 
  VALUES ('Johnny');

insert into customer (firstName) 
  VALUES ('Billy');
  
insert into customer (firstName) 
  VALUES ('Mac');
  
insert into customer (firstName) 
  VALUES ('Fiona');
  
-- ---
-- 'product' data
-- 
-- ---
insert into product (name)
  VALUES ('bacon');
  
insert into product (name)
  VALUES ('eggs'); 

insert into product (name)
  VALUES ('bread');
  
insert into product (name)
  VALUES ('chips');

insert into product (name)
  VALUES ('milk');
  
insert into product (name)
  VALUES ('carrots');
  
insert into product (name)
  VALUES ('cheese'); 
  
insert into product (name)
  VALUES ('almonds');
  
insert into product (name)
  VALUES ('cashews');
  
insert into product (name)
  VALUES ('ground turkey'); 
  
insert into product (name)
  VALUES ('chicken breast'); 
  
insert into product (name)
  VALUES ('red beans'); 
  
insert into product (name)
  VALUES ('garlic'); 
  
insert into product (name)
  VALUES ('salt');
  
insert into product (name)
  VALUES ('pepper'); 
  
insert into product (name)
  VALUES ('orange juice'); 
  
insert into product (name)
  VALUES ('apples');
  
insert into product (name)
  VALUES ('diet coke');
  
insert into product (name)
  VALUES ('coffee');
  
insert into product (name)
  VALUES ('ice cream');
  
insert into product (name)
  VALUES ('salami'); 
  
insert into product (name)
  VALUES ('broccoli'); 
  
insert into product (name)
  VALUES ('oatmeal'); 
  
insert into product (name)
  VALUES ('bacon bits');
  
insert into product (name)
  VALUES ('bacon roses');
  
insert into product (name)
  VALUES ('ramen'); 
  
insert into product (name)
  VALUES ('sugar'); 
  
insert into product (name)
  VALUES ('mustard'); 
  
insert into product (name)
  VALUES ('ketchup'); 
  
-- ---
-- 'category' data
-- 
-- ---
insert into category (name)
  VALUES('meat');
  
insert into category (name)
  VALUES('breakfast');
  
insert into category (name)
  VALUES('condiment');
  
insert into category (name)
  VALUES('deli');
  
insert into category (name)
  VALUES('dairy');
  
insert into category (name)
  VALUES('fruit');
  
insert into category (name)
  VALUES('snack');
  
insert into category (name)
  VALUES('nuts');
  
insert into category (name)
  VALUES('refreshment');
  
insert into category (name)
  VALUES('legumes');
  
insert into category (name)
  VALUES('dessert');
  
insert into category (name)
  VALUES('struggle');

insert into category (name)
  VALUES('grain');

insert into category (name)
  VALUES('vegetable');
  
-- ---
-- 'customers_order' data
-- 
-- ---
insert into customers_order (customerId, status)
  VALUES (1, 'ordered');

insert into customers_order (customerId, status)
  VALUES (1, 'shipped');
  
insert into customers_order (customerId, status)
  VALUES (1, 'delivered');
  
insert into customers_order (customerId, status)
  VALUES (2, 'ordered');

insert into customers_order (customerId, status)
  VALUES (2, 'shipped');
  
insert into customers_order (customerId, status)
  VALUES (2, 'delivered');
  
insert into customers_order (customerId, status)
  VALUES (3, 'ordered');

insert into customers_order (customerId, status)
  VALUES (3, 'shipped');
  
insert into customers_order (customerId, status)
  VALUES (3, 'delivered');
  
insert into customers_order (customerId, status)
  VALUES (4, 'ordered');

insert into customers_order (customerId, status)
  VALUES (4, 'shipped');
  
insert into customers_order (customerId, status)
  VALUES (4, 'delivered');
  

-- ---
-- 'category_product' data
-- 
-- ---
insert into category_product (product_id, category_id)
  VALUES(1, 2);

insert into category_product (product_id, category_id)
  VALUES(1, 4);

insert into category_product (product_id, category_id)
  VALUES(2, 2);

insert into category_product (product_id, category_id)
  VALUES(3, 13);

insert into category_product (product_id, category_id)
  VALUES(4, 7);

insert into category_product (product_id, category_id)
  VALUES(5, 5);

insert into category_product (product_id, category_id)
  VALUES(6, 7);  

insert into category_product (product_id, category_id)
  VALUES(6, 14);  

insert into category_product (product_id, category_id)
  VALUES(7, 5);  

insert into category_product (product_id, category_id)
  VALUES(8, 7);  

insert into category_product (product_id, category_id)
  VALUES(8, 8);  
  
insert into category_product (product_id, category_id)
  VALUES(9, 7);  

insert into category_product (product_id, category_id)
  VALUES(9, 8);  

insert into category_product (product_id, category_id)
  VALUES(10, 1);  

insert into category_product (product_id, category_id)
  VALUES(11, 1);  

insert into category_product (product_id, category_id)
  VALUES(10, 1);  

insert into category_product (product_id, category_id)
  VALUES(12, 10);  

insert into category_product (product_id, category_id)
  VALUES(13, 14);  

insert into category_product (product_id, category_id)
  VALUES(14, 3);  

insert into category_product (product_id, category_id)
  VALUES(15, 3);  

insert into category_product (product_id, category_id)
  VALUES(16, 6);  

insert into category_product (product_id, category_id)
  VALUES(16, 9);  

insert into category_product (product_id, category_id)
  VALUES(17, 6);  

insert into category_product (product_id, category_id)
  VALUES(18, 9);  
  
insert into category_product (product_id, category_id)
  VALUES(19, 2);  

insert into category_product (product_id, category_id)
  VALUES(19, 9);  
  
insert into category_product (product_id, category_id)
  VALUES(20, 9);  

insert into category_product (product_id, category_id)
  VALUES(20, 11);  
  
insert into category_product (product_id, category_id)
  VALUES(21, 4);  

insert into category_product (product_id, category_id)
  VALUES(22, 14);

insert into category_product (product_id, category_id)
  VALUES(23, 2);

insert into category_product (product_id, category_id)
  VALUES(24, 2);

insert into category_product (product_id, category_id)
  VALUES(25, 2);

insert into category_product (product_id, category_id)
  VALUES(26, 12);

insert into category_product (product_id, category_id)
  VALUES(27, 2);

insert into category_product (product_id, category_id)
  VALUES(28, 3);

insert into category_product (product_id, category_id)
  VALUES(29, 3);

  
-- ---
-- 'order_products' data LMAO  this is me every fucking day
-- 
-- ---
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(1, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-02 00:00:00')), 21, 4);
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(2, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-05 00:00:00')), 17, 7);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(3, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-02-01 00:00:00')), 8, 2);
  
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(4, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-02-01 00:00:00')), 4, 1);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(5, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-03-03 00:00:00')), 10, 1);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(6, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-08 00:00:00')), 19, 3);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(7, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-12 00:00:00')), 20, 12);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(8, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-02-02 00:00:00')), 27, 6);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(9, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-02-19 00:00:00')), 5, 2);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(10, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-03-30 00:00:00')), 26, 7);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(11, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-03-04 00:00:00')), 2, 8);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(12, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-02-12 00:00:00')), 1, 9);
  
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(12, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-01 00:00:00')), 1, 9);

insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(12, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-01 00:00:00')), 1, 9);
  
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(12, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-01-19 00:00:00')), 1, 9);
  
insert into order_products (order_id, order_date, product_id, number_of_product)
  VALUES(12, FROM_UNIXTIME(UNIX_TIMESTAMP('2017-03-21 00:00:00')), 1, 9);