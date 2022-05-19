/* 192.168.0.101:1521  system  zhongshijie */

-- 创建big_a
create tablespace big_a
    datafile 'D:\OracleDB\tab_space\big_a.dbf'
    size 128M AUTOEXTEND ON ;
-- 创建用户
create user big_a identified by big_a default tablespace big_a ;
grant connect, resource, create any view to big_a;
-- 赋予用户表空间权限
alter user big_a quota unlimited on big_a;
-- 删除用户
drop user big_a cascade ;
-- 删除表空间
drop tablespace big_a including contents and datafiles cascade constraints ;


-- 创建big_b
create tablespace big_b
    datafile 'D:\OracleDB\tab_space\big_b.dbf'
    size 128M AUTOEXTEND ON ;
-- 创建用户
create user big_b identified by big_b default tablespace big_b ;
grant connect, resource, create any view to big_b;
-- 赋予用户表空间权限
alter user big_b quota unlimited on big_b;
-- 删除用户
drop user big_b cascade ;
-- 删除表空间
drop tablespace big_b including contents and datafiles cascade constraints ;
