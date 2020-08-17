-- 创建ygsx数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS ygsx;
CREATE DATABASE ygsx CHARSET=UTF8;
USE ygsx;

-- 注册信息
CREATE TABLE reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd   VARCHAR(32)
);

-- 登录信息
CREATE TABLE login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd VARCHAR(32)
);

-- 首页商品列表
CREATE TABLE shouye(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64)
);
INSERT INTO shouye VALUES
(NULL,'f1-1.jpg'),
(NULL,'f1-2.jpg'),
(NULL,'f1-3.jpg'),
(NULL,'f1-4.jpg'),
(NULL,'f1-5.jpg'),
(NULL,'f1-6.jpg'),
(NULL,'f1-7.jpg'),
(NULL,'f2-1.jpg'),
(NULL,'f2-2.jpg'),
(NULL,'f2-3.jpg'),
(NULL,'f2-4.jpg'),
(NULL,'f2-5.jpg'),
(NULL,'f2-6.jpg'),
(NULL,'f2-7.jpg'),
(NULL,'f3-1.jpg'),
(NULL,'f3-2.jpg'),
(NULL,'f3-3.jpg'),
(NULL,'f3-4.jpg'),
(NULL,'f3-5.jpg'),
(NULL,'f3-6.jpg'),
(NULL,'f3-7.jpg'),
(NULL,'f3-d-1.jpg'),
(NULL,'f3-d-2.jpg'),
(NULL,'f4-1.jpg'),
(NULL,'f4-2.jpg'),
(NULL,'f4-3.jpg'),
(NULL,'f4-4.jpg'),
(NULL,'f4-5.jpg'),
(NULL,'f4-6.jpg'),
(NULL,'f4-7.jpg'),
(NULL,'f4-d-1.jpg'),
(NULL,'f4-d-2.jpg');


-- 商品详情列表
CREATE TABLE details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price decimal(10,2) DEFAULT '0.00' ,
    title varchar(255) DEFAULT NULL ,
    src VARCHAR(64)
);
INSERT INTO details VALUES (NULL, '49.00', '智利进口金奇异果8个装礼盒 单果约75-90g');
