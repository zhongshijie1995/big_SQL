/* 192.168.0.101:3306  root  zhongshijie */

-- 查询数据库
show databases ;
-- 查询用户
select * from mysql.user;

/* 创建 big_boot_test */
-- 创建用户
create user 'big_boot_test'@'%' identified by 'big_boot_test';
create schema big_boot_test default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_boot_test.* to big_boot_test;
flush privileges;
-- 删除用户
drop user big_boot_test;
drop schema big_boot_test;

/* 创建 big_boot_prod */
-- 创建用户
create user 'big_boot_prod'@'%' identified by 'big_boot_prod';
create schema big_boot_prod default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_boot_prod.* to big_boot_prod;
flush privileges;
-- 删除用户
drop user big_boot_prod;
drop schema big_boot_prod;

/* 创建 big_api_test */
-- 创建用户
create user 'big_api_test'@'%' identified by 'big_api_test';
create schema big_api_test default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_api_test.* to big_api_test;
flush privileges;
-- 删除用户
drop user big_api_test;
drop schema big_api_test;

/* 创建 big_api_prod */
-- 创建用户
create user 'big_api_prod'@'%' identified by 'big_api_test';
create schema big_api_prod default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_api_prod.* to big_api_prod;
flush privileges;
-- 删除用户
drop user big_api_prod;
drop schema big_api_prod;

/* 创建 big_trade */
-- 创建用户
create user 'big_trade'@'%' identified by 'big_trade';
create schema big_trade default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_trade.* to big_trade;
flush privileges;
-- 删除用户
drop user big_trade;
drop schema big_trade;
