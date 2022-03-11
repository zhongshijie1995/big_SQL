-- 创建表空间
create tablespace big_oracle
    datafile 'C:\Users\zhongshijie\Desktop\DataSpace\big_oracle.dbf'
    size 128M AUTOEXTEND ON ;
-- 创建用户
create user big_oracle identified by big_oracle default tablespace big_oracle ;
grant connect, resource, create any view to big_oracle;
-- 赋予用户表空间权限
alter user big_oracle quota unlimited on big_oracle;
-- 删除用户
drop user big_oracle cascade ;
-- 删除表空间
drop tablespace big_oracle including contents and datafiles cascade constraints ;
