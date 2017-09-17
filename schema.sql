-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'customer'
-- 
-- ---
CREATE DATABASE IF NOT EXISTS grocery_list;

USE grocery_list;



DROP TABLE IF EXISTS `customer`;
    
CREATE TABLE `customer` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(255),
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'product'
-- 
-- ---

DROP TABLE IF EXISTS `product`;
    
CREATE TABLE `product` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR (255),
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'order'
-- 
-- ---

DROP TABLE IF EXISTS `customers_order`;
    
CREATE TABLE `customers_order` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `customerId` INTEGER NOT NULL,
  `status` VARCHAR(255),
  PRIMARY KEY (`id`)
);

-- -- ---
-- -- Table 'category'
-- -- 
-- -- ---

DROP TABLE IF EXISTS `category`;
    
CREATE TABLE `category` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'category_product'
-- 
-- ---

DROP TABLE IF EXISTS `category_product`;
    
CREATE TABLE `category_product` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER NOT NULL,
  `category_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'number of product'
-- 
-- ---

DROP TABLE IF EXISTS `order_products`;
    
CREATE TABLE `order_products` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `order_date` DATETIME NOT NULL,
  `order_id` INTEGER NOT NULL,
  `product_id` INTEGER NOT NULL,
  `number_of_product` INTEGER NOT NULL, 
  PRIMARY KEY (`id`)
);

-- -- ---
-- -- Foreign Keys 
-- -- ---

-- ALTER TABLE `order` ADD FOREIGN KEY (customer id) REFERENCES `customer` (`id`);
-- ALTER TABLE `category_product` ADD FOREIGN KEY (product id) REFERENCES `product` (`id`);
-- ALTER TABLE `category_product` ADD FOREIGN KEY (category id) REFERENCES `category` (`id`);
-- ALTER TABLE `number of product` ADD FOREIGN KEY (order_id) REFERENCES `order` (`id`);
-- ALTER TABLE `number of product` ADD FOREIGN KEY (product_id) REFERENCES `product` (`id`);

-- -- ---
-- -- Table Properties
-- -- ---

-- -- ALTER TABLE `customer` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `order` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `category_product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `number of product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- -- ---
-- -- Test Data
-- -- ---

-- -- INSERT INTO `customer` (`id`,`first name`) VALUES
-- -- ('','');
-- -- INSERT INTO `product` (`id`,`name`) VALUES
-- -- ('','');
-- -- INSERT INTO `order` (`id`,`customer id`,`status`) VALUES
-- -- ('','','');
-- -- INSERT INTO `category` (`id`,`name`) VALUES
-- -- ('','');
-- -- INSERT INTO `category_product` (`id`,`product id`,`category id`) VALUES
-- -- ('','','');
-- -- INSERT INTO `number of product` (`id`,`order_id`,`product_id`,`number of product`) VALUES
-- -- ('','','','');