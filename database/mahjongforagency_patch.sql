DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `out_trade_no` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `total_fee` varchar(255) DEFAULT NULL,
  `card` VARCHAR (10) DEFAULT NULL,
  `mch_create_ip` varchar(255) DEFAULT NULL,
  `agencyId` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `isPay` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `isAddCard` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;


CREATE TABLE `mahjongforagency`.`bind`(
  `agencyID` INT NOT NULL,
  `account` VARCHAR(20),
  `access_token` VARCHAR(100),
  `openid` VARCHAR(100),
  `nickname` VARCHAR(100),
  `sex` VARCHAR(2),
  `province` VARCHAR(20),
  `city` VARCHAR(20),
  `headimgurl` VARCHAR(300),
  `unionid` VARCHAR(100),
  PRIMARY KEY (`agencyID`)
);


ALTER TABLE `mahjongforagency`.`bind`
  CHANGE `nickname` `nickname` VARCHAR(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL;

ALTER TABLE `bind`
MODIFY COLUMN `access_token`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `account`,
MODIFY COLUMN `unionid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `headimgurl`;

ALTER TABLE `mahjongforagency`.`bind`
  CHANGE `openid` `openid` VARCHAR(255) CHARSET utf8 COLLATE utf8_general_ci NULL,
  ADD COLUMN `last_code` VARCHAR(255) NULL AFTER `unionid`,
  ADD COLUMN `bind_time` DATETIME DEFAULT NOW()   NULL AFTER `last_code`;


ALTER TABLE `agency_product`
MODIFY COLUMN `price`  double(10,2) NOT NULL COMMENT '价格' AFTER `id`;


ALTER TABLE `mahjongforagency`.`pay_order`
  ADD COLUMN `sell_agencyID` INT NULL AFTER `isAddCard`,
  ADD COLUMN `shared_revenue` DOUBLE NULL AFTER `sell_agencyID`,
  ADD COLUMN `insufficient_card` INT NULL AFTER `shared_revenue`,
  ADD COLUMN `transaction_id` VARCHAR(255) NULL AFTER `insufficient_card`;
