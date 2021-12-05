-- 创建用户
create user big_oracle identified by big_oracle;
grant connect, resource to big_oracle;
-- 删除用户
drop user big_oracle cascade;
