CREATE databases seckill;
use seckill;
CREATE TABLE SECKILL(
'seckill_id' bigint NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
'name' VARCHAR (120) NOT NULL COMMENT '商品名称',
'number' INT NOT NULL COMMENT '库存数量',
'create_time' TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
'start_time' TIMESTAMP NOT NULL COMMENT '秒杀开始时间',
'end_time' TIMESTAMP NOT NULL COMMENT '秒杀结束时间',
PRIMARY KEY (seckill_id),
KEY idx_start_time(start_time),
KEY idx_end_time(end_time),
KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表'

-- 初始化数据库
INSERT INTO
  seckill (NAME,NUMBER,start_time,end_time)
  VALUES
  ('1000元秒杀iphone6',10,'2015-11-01 00:00:00','2015-11-01 00:00:00'),
  ('500元秒杀ipad2',20,'2015-11-01 00:00:00','2015-11-01 00:00:00'),
  ('300元秒杀小米5',30,'2015-11-01 00:00:00','2015-11-01 00:00:00'),
  ('100元秒杀红米2A',40,'2015-11-01 00:00:00','2015-11-01 00:00:00');

-- 秒杀成功明细表
CREATE TABLE success_killed(
'seckill_id' bigint NOT NULL COMMENT '秒杀商品id',
'user_phone' bigint NOT NULL COMMENT '用户手机号',
'state' tinyint NOT NULL DEFAULT -1 COMMENT '状态表示：-1：无效 0：成功 1：已付款 2：已发货',
'create_time' TIMESTAMP NOT NULL COMMENT '创建时间',
PRIMARY KEY (seckill_id,user_phone),
KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

-- 连接数据库控制台
mysql -uroot -p