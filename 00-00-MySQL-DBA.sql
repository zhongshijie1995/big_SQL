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
