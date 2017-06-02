--使用数据库
use test;
--创建秒杀库存表
create table seckill(
`seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'product id',
`name` varchar(120) NOT NULL COMMENT 'product name',
`number` int NOT NULL COMMENT 'leave number',
`start_time` timestamp NOT NULL COMMENT 'second kill start time',
`end_time` timestamp NOT NULL COMMENT 'second kill end time',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
PRIMARY KEY (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表'

--初始化数据
insert into 
   seckill(name,number,start_time,end_time)
values 
	('3000元秒杀iphone10',10,'2017-05-26 00:00:00','2017-05-30 00:00:00'),
	('1000元秒杀ipad',50,'2017-05-27 00:00:00','2017-06-30 00:00:00'),
	('500元秒杀小米4',100,'2017-05-28 00:00:00','2017-06-03 00:00:00'),
	('100元秒杀银河系',200,'2017-05-29 00:00:00','2017-06-02 00:00:00');
	
-- 秒杀成功明细表
-- 用户登录认证相关信息
create table success_killed(
	`seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT '秒杀商品id',
	`user_phone` bigint NOT NULL COMMENT '用户手机号',
	`state` tinyint NOT NULL DEFAULT -1 COMMENT '状态标示：-1 无效 0成功 1已付款',
	`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	 PRIMARY KEY (seckill_id,user_phone),
	 key idx_create_time(create_time)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表'
--链接数据库的控制台
mysql -umcs_stat -pmcs_stat