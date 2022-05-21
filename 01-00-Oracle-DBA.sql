/* 192.168.0.101:1521  system  zhongshijie */

/* ------------------- 创建 ------------------- */
-- 创建big_test_a
create tablespace big_test_a
    datafile 'D:\OracleDB\tab_space\big_test_a.dbf'
    size 128M AUTOEXTEND ON ;
-- 创建用户
create user big_test_a identified by big_test_a default tablespace big_test_a ;
grant connect, resource, create any view to big_test_a;
-- 赋予用户表空间权限
alter user big_test_a quota unlimited on big_test_a;
-- 赋予DBLink的全新
grant create public database link to big_test_a;
/* ------------------- 删除 ------------------- */
-- 删除用户
drop user big_test_a cascade ;
-- 删除表空间
drop tablespace big_test_a including contents and datafiles cascade constraints ;



/* ------------------- 创建 ------------------- */
-- 创建big_test_b
create tablespace big_test_b
    datafile 'D:\OracleDB\tab_space\big_test_b.dbf'
    size 128M AUTOEXTEND ON ;
-- 创建用户
create user big_test_b identified by big_test_b default tablespace big_test_b ;
grant connect, resource, create any view to big_test_b;
-- 赋予用户表空间权限
alter user big_test_b quota unlimited on big_test_b;
-- 赋予DBLink的全新
grant create public database link to big_test_b;
/* ------------------- 删除 ------------------- */
-- 删除用户
drop user big_test_b cascade ;
-- 删除表空间
drop tablespace big_test_b including contents and datafiles cascade constraints ;

/* ------------------- 连接数据库 ------------------- */
-- 创建数据库连接
create public database link big_test_a connect to big_test_a identified by big_test_a using
    '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.0.1)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=orcl)))';
create public database link big_test_b connect to big_test_b identified by big_test_b using
    '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.0.1)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=orcl)))';
-- 查询数据库连接
select * from dba_db_links;
-- 删除数据库连接
drop public database link big_test_a;
drop public database link big_test_b;
