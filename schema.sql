-- create database grocerylist;

-- use  grocerylist;

-- create table groceries(
--   groceryid int auto_increment primary key,
--   name varchar(20) not null,
--   image varchar(100) not null
-- );

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Product'
-- 
-- ---

DROP TABLE IF EXISTS `Product`;
    
CREATE TABLE `Product` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Name` VARCHAR NULL DEFAULT NULL,
  `Image` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Category'
-- 
-- ---

DROP TABLE IF EXISTS `Category`;
    
CREATE TABLE `Category` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Name` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Product/Category'
-- Join Table
-- ---

DROP TABLE IF EXISTS `Product/Category`;
    
CREATE TABLE `Product/Category` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `ProductId` INTEGER NULL DEFAULT NULL,
  `CategoryId` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Join Table';

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Product/Category` ADD FOREIGN KEY (ProductId) REFERENCES `Product` (`id`);
ALTER TABLE `Product/Category` ADD FOREIGN KEY (CategoryId) REFERENCES `Category` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Product/Category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Product` (`id`,`Name`,`Image`) VALUES
-- ('','','');
-- INSERT INTO `Category` (`id`,`Name`) VALUES
-- ('','');
-- INSERT INTO `Product/Category` (`id`,`ProductId`,`CategoryId`) VALUES
-- ('','','');