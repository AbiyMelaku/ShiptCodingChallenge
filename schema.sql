-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'customer'
-- 
-- ---

DROP TABLE IF EXISTS `customer`;
    
CREATE TABLE `customer` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `first name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'product'
-- 
-- ---

DROP TABLE IF EXISTS `product`;
    
CREATE TABLE `product` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'order'
-- 
-- ---

DROP TABLE IF EXISTS `order`;
    
CREATE TABLE `order` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `customer id` INTEGER NULL DEFAULT NULL,
  `status` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'category'
-- 
-- ---

DROP TABLE IF EXISTS `category`;
    
CREATE TABLE `category` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'category_product'
-- 
-- ---

DROP TABLE IF EXISTS `category_product`;
    
CREATE TABLE `category_product` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `product id` INTEGER NULL DEFAULT NULL,
  `category id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'number of product'
-- 
-- ---

DROP TABLE IF EXISTS `number of product`;
    
CREATE TABLE `number of product` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `order_id` INTEGER NULL DEFAULT NULL,
  `product_id` INTEGER NULL DEFAULT NULL,
  `number of product` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `order` ADD FOREIGN KEY (customer id) REFERENCES `customer` (`id`);
ALTER TABLE `category_product` ADD FOREIGN KEY (product id) REFERENCES `product` (`id`);
ALTER TABLE `category_product` ADD FOREIGN KEY (category id) REFERENCES `category` (`id`);
ALTER TABLE `number of product` ADD FOREIGN KEY (order_id) REFERENCES `order` (`id`);
ALTER TABLE `number of product` ADD FOREIGN KEY (product_id) REFERENCES `product` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `customer` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `order` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `category_product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `number of product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `customer` (`id`,`first name`) VALUES
-- ('','');
-- INSERT INTO `product` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `order` (`id`,`customer id`,`status`) VALUES
-- ('','','');
-- INSERT INTO `category` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `category_product` (`id`,`product id`,`category id`) VALUES
-- ('','','');
-- INSERT INTO `number of product` (`id`,`order_id`,`product_id`,`number of product`) VALUES
-- ('','','','');