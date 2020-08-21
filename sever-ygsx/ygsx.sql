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


-- 商品分页列表
CREATE TABLE paging(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price decimal(10,2) DEFAULT '0.00' ,
    title varchar(255) DEFAULT NULL ,
    src VARCHAR(64)
);
INSERT INTO paging VALUES
(1, '49.00', '智利进口金奇异果8个装礼盒 单果约75-90g','9288740586858716_300.jpg'),
(2, '', '',''),
(3, '', '',''),
(4, '', '',''),
(5, '38.00', '原膳南美白虾仁（中）250g','9288715872871294_300.jpg'),
(6, '169.00', '阿根廷红虾(L1)2kg','9288734447445367_300.jpg'),
(7, '19.90', '百年渔港蒜蓉粉丝扇贝200g(6枚装)','9288733757351272_300.jpg');

-- 商品详情列表
CREATE TABLE details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fenleia varchar(255) DEFAULT NULL ,
    fenleib varchar(255) DEFAULT NULL ,
    guigea varchar(255) DEFAULT NULL ,
    titlea varchar(255) DEFAULT NULL ,
    titleb varchar(255) DEFAULT NULL ,
    pricea decimal(10,2)  ,
    priceb decimal(10,2)  ,
    guigeb varchar(255) DEFAULT NULL ,
    src1 VARCHAR(64),
    src2 VARCHAR(64),
    src3 VARCHAR(64)
);
INSERT INTO details VALUES
(1, '新鲜水果','奇异果/猕猴桃', '智利进口金奇异果8个装礼盒 单果约75-90g','智利进口金奇异果8个装礼盒 单果约75-90g','软化香甜细腻软糯 一口惊艳味蕾','49.00','49.00','8个/盒','details-big1.jpg','details-big2.jpg','details-big3.jpg'),
(2, '新鲜水果','牛油果', '墨西哥牛油果4个150g以上/个','墨西哥牛油果4个150g以上/个','丝滑口感 轻食搭配 色拉好搭档','59.90','59.90','600g/盒','9288740085508204_500.jpg','9288740085409900_500.jpg','9288740085475436_500.jpg'),
(3, '新鲜水果','热带水果', '泰国龙眼1kg/盒','泰国龙眼1kg/盒','果肉晶莹剔透 甜蜜涌上心头','35.80','35.80','1盒/份','9288737696556669_500.jpg','9288737696622205_500.jpg','9288737696589437_500.jpg'),
(4, '新鲜水果','瓜类', '海南西州蜜瓜1个(约1.5kg/个)','海南西州蜜瓜1个(约1.5kg/个)','甜蜜大个头 适合全家分享','23.80','23.80','1个/份','9288737712514689_500.jpg','9288737712547457_500.jpg','9288737712580225_500.jpg'),
(5, '海鲜水产','虾蟹', '原膳南美白虾仁（中）250g','原膳南美白虾仁（中）250g','饱满弹嫩 营养低脂 去壳去肠','38.00','38.00','0.25kg/袋','9288715872969598_500.jpg','9288715872904062_500.jpg','9288725601232102_500.jpg'),
(6, '海鲜水产','虾蟹', '阿根廷红虾(L1)2kg','阿根廷红虾(L1)2kg','不同包装交替发货 原装进口 只手难握的L号 虾肉饱满鲜美微甜','169.00','169.00','2kg/盒','9288734447543671_500.jpg','9288734447478135_500.jpg','9288734447510903_500.jpg'),
(7, '海鲜水产','贝', '百年渔港蒜蓉粉丝扇贝200g(6枚装)','百年渔港蒜蓉粉丝扇贝200g(6枚装)','便捷烹任，5分钟即可食用，入口汁鲜饱满','19.90','19.90','200g/袋','9288733757384040_500.jpg','9288733757416808_500.jpg','9288733757449576_500.jpg');
