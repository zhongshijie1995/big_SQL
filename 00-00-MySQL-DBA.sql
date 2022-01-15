-- 查询数据库
show databases ;
-- 查询用户
select * from mysql.user;
-- 创建用户
create user 'big_sql'@'%' identified by 'big_sql';
create schema big_sql default character set utf8mb4 collate utf8mb4_general_ci;
grant all on big_sql.* to big_sql;
flush privileges;
-- 删除用户
drop user big_sql;
drop schema big_sql;
